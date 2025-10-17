import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pet_application/core/cache/preferences_storage/preferences_storage.dart';
import 'package:pet_application/core/error/failure.dart';
import 'package:pet_application/core/network/authorization_interceptor.dart';

import '/core/constants/strings.dart';
import '/core/di/services_locator.dart';
import '../../generated/l10n.dart';
import '../cache/secure_storage/secure_storage.dart';

class NetworkService {
  final Dio dio;

  NetworkService(this.dio) {
    dio.options
      ..baseUrl = AppStrings.baseUrl
      ..responseType = ResponseType.json
      ..followRedirects = false
      ..receiveDataWhenStatusError = true
      ..connectTimeout = const Duration(seconds: 60)
      ..receiveTimeout = const Duration(seconds: 60);

    addHeaders();
    addInterceptors();
  }

  void addInterceptors() {
    dio.interceptors.add(AuthorizationInterceptor());
  }

  void addHeaders() async {
    final token = await sl<SecureStorage>().read(SecureStorageKeys.userToken);
    dio.options.headers = {
      "Authorization": "Bearer $token",
      "Content-Type": "application/json",
      "locale": sl<PreferencesStorage>().getCurrentLanguage(),
    };
  }

  Future<bool> _hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException {
      return false;
    }
  }

  String extractMessage(dynamic data) {
    if (data is Map) {
      return data['message'] ??
          data['msg'] ??
          data['error'] ??
          data['errorMessage'] ??
          S().somethingWentWrong;
    }
    return S().somethingWentWrong;
  }

  Future<Either<Failure, dynamic>> _safeRequest(
    Future<Response> Function() requestFn,
  ) async {
    if (!await _hasInternetConnection()) {
      return Left(Failure(S().noInternet));
    }
    try {
      final response = await requestFn();

      // Parse response data if it's a string
      dynamic responseData = response.data;
      if (responseData is String && responseData.isNotEmpty) {
        try {
          responseData = jsonDecode(responseData);
        } catch (e) {
          // If can't parse, keep as string
        }
      }

      // Success response (200-299)
      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        // Check if response explicitly has status: false
        if (responseData is Map && responseData['status'] == false) {
          final message = extractMessage(responseData);
          return Left(Failure(message, data: responseData['data']));
        }
        return Right(responseData);
      }
      // Error response (400+)
      else {
        final message = extractMessage(responseData);
        return Left(Failure(message, data: responseData));
      }
    } on DioException catch (e) {
      // Handle Dio errors
      dynamic errorData = e.response?.data;
      if (errorData is String && errorData.isNotEmpty) {
        try {
          errorData = jsonDecode(errorData);
        } catch (_) {}
      }

      final message = extractMessage(errorData);
      return Left(Failure(message, data: errorData));
    } catch (e) {
      return Left(Failure(S().somethingWentWrong));
    }
  }

  Future<Either<Failure, dynamic>> getData({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _safeRequest(
      () => dio.get(endPoint, queryParameters: queryParameters),
    );
  }

  Future<Either<Failure, dynamic>> postData({
    required String endPoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    bool isRaw = true,
  }) async {
    final payload = data == null
        ? null
        : isRaw
        ? data
        : FormData.fromMap(data);
    return _safeRequest(
      () => dio.post(endPoint, data: payload, queryParameters: queryParameters),
    );
  }

  Future<Either<Failure, dynamic>> putData({
    required String endPoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _safeRequest(
      () => dio.put(endPoint, data: data, queryParameters: queryParameters),
    );
  }

  Future<Either<String, dynamic>> patchData({
    required String endPoint,
    required FormData data,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (!await _hasInternetConnection()) {
      return Left(S().noInternet);
    }
    try {
      final response = await dio.patch(
        endPoint,
        data: data,
        queryParameters: queryParameters,
      );
      return Right(response.data);
    } on DioException catch (e) {
      final message = extractMessage(e.response?.data);
      return Left(message);
    } catch (_) {
      return Left(S().somethingWentWrong);
    }
  }

  Future<Either<String, dynamic>> deleteData({
    required String endPoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (!await _hasInternetConnection()) {
      return Left(S().noInternet);
    }
    try {
      final response = await dio.delete(
        endPoint,
        data: data,
        queryParameters: queryParameters,
      );
      return Right(response.data);
    } on DioException catch (e) {
      final message = extractMessage(e.response?.data);
      return Left(message);
    } catch (_) {
      return Left(S().somethingWentWrong);
    }
  }

  Future<Either<Failure, dynamic>> uploadFile({
    required String endPoint,
    required FormData formData,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _safeRequest(
      () =>
          dio.post(endPoint, data: formData, queryParameters: queryParameters),
    );
  }

  Future<Either<String, dynamic>> downloadFile({
    required String fileUrl,
    required String savePath,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (!await _hasInternetConnection()) {
      return Left(S().noInternet);
    }
    try {
      final response = await dio.download(
        fileUrl,
        savePath,
        queryParameters: queryParameters,
      );
      return Right(response);
    } on DioException catch (e) {
      final message = extractMessage(e.response?.data);
      return Left(message);
    } catch (_) {
      return Left(S().somethingWentWrong);
    }
  }

  Left<Failure, dynamic> handleDioExceoptions(DioException e) {
    final message = extractMessage(e.response?.data);
    return Left(Failure(message));
  }
}
