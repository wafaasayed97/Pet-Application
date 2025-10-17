
import '../../generated/l10n.dart';

class Validators {
  static bool isValidEmail(String email) {
    return RegExp(
      r'^[a-zA-Z]\w*([_.-]\w*)?@[a-zA-Z\d]+([.-][a-zA-Z\d]+)*\.[a-zA-Z]{2,}$',
    ).hasMatch(email);
  }

  static bool isNotValidEmail(String email) => !isValidEmail(email);

  static bool isValidPassword(String password) {
    return RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9].*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
    ).hasMatch(password);
  }

  static bool isNotValidPassword(String password) => !isValidPassword(password);

  static bool isSaudiPhoneNumberValid(String phoneNumber) {
    return RegExp(r'^05[0-9]{8}$').hasMatch(phoneNumber);
  }

  static bool isValidSaudiID(String id) {
    if (!RegExp(r'^[12]\d{9}$').hasMatch(id)) return false;
    int sum = 0;
    for (int i = 0; i < 9; i++) {
      int digit = int.parse(id[i]);
      if (i % 2 == 0) {
        digit *= 2;
        if (digit > 9) digit -= 9;
      }
      sum += digit;
    }
    int checkDigit = int.parse(id[9]);
    int calculatedCheck = (10 - (sum % 10)) % 10;

    return checkDigit == calculatedCheck;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return S().phone_number_is_required;
    }
    final digitsOnly = value.replaceAll(RegExp(r'[^\d]'), '');

    if (digitsOnly.length < 10) {
      return S().please_enter_a_valid_phone_number;
    }

    if (digitsOnly.length > 15) {
      return S().please_enter_a_valid_phone_number;
    }
    if (!RegExp(r'^\d+$').hasMatch(digitsOnly)) {
      return S().phone_number_must_contain_only_digits;
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return S().name_required;
    }
    if (value.trim().length < 3) {
      return S().name_too_short;
    }
    return null;
  }

  static String? validateArabicName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return S().arabic_name_required;
    }
    final arabicRegex = RegExp(r'^[\u0600-\u06FF\s]+$');
    if (!arabicRegex.hasMatch(value.trim())) {
      return S().arabic_name_invalid;
    }
    return null;
  }

  static String? validateAddress(String? value) {
    if (value == null || value.trim().isEmpty) {
      return S().address_required;
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return S().email_required;
    }
    if (!isValidEmail(value.trim())) {
      return S().email_invalid;
    }
    return null;
  }

  static String? validateNationalId(String? value) {
    if (value == null || value.trim().isEmpty) {
      return S().national_id_required;
    }

    final id = value.trim();

    if (id.length != 14) {
      return S().national_id_must_be_14_digits;
    }

    if (!RegExp(r'^[0-9]{14}$').hasMatch(id)) {
      return S().national_id_must_be_digits;
    }

    final century = id.substring(0, 1);
    if (!['2', '3'].contains(century)) {
      return S().national_id_invalid_century;
    }

    final year = int.tryParse(id.substring(1, 3));
    final month = int.tryParse(id.substring(3, 5));
    final day = int.tryParse(id.substring(5, 7));

    if (year == null || month == null || day == null) {
      return S().national_id_invalid_date;
    }

    if (month < 1 || month > 12) {
      return S().national_id_invalid_month;
    }

    if (day < 1 || day > 31) {
      return S().national_id_invalid_day;
    }

    final governorate = int.tryParse(id.substring(7, 9));
    if (governorate == null || governorate < 1 || governorate > 35) {
      return S().national_id_invalid_governorate;
    }

    return null;
  }

  static String? validatePassport(String? value) {
    if (value == null || value.trim().isEmpty) {
      return S().passport_required;
    }

    final passport = value.trim().toUpperCase();

    if (passport.length < 6 || passport.length > 20) {
      return S().passport_length_invalid;
    }

    if (!RegExp(r'^[A-Z0-9]+$').hasMatch(passport)) {
      return S().passport_format_invalid;
    }

    return null;
  }
}
