import 'package:pet_application/core/cache/hive/hive_keys.dart';
import 'package:pet_application/core/cache/preferences_storage/preferences_storage.dart';
import 'package:pet_application/core/helpers/alerts.dart';
import '../../generated/l10n.dart';
import '../cache/hive/hive_helper.dart';
import '../cache/secure_storage/secure_storage.dart';

class SessionManager {
  final SecureStorage storage;
  final PreferencesStorage preferencesStorage;
  final HiveHelper hiveHelper;
  SessionManager(this.storage, this.preferencesStorage, this.hiveHelper);

  Future<void> handleUnauthorized() async {
    await storage.deleteAll();
    await Future.wait([
      hiveHelper.clear(),
      hiveHelper.delete(HiveKeys.units),
      hiveHelper.delete(HiveKeys.profile),
      hiveHelper.delete(HiveKeys.news),
      hiveHelper.delete(HiveKeys.rmUser),
    ]);
    showError(S().your_session_has_been_expired);
    // TODO: Navigate to LOGIN SCREEN
    // routes.go(Routes.loginScreen);
  }
}
