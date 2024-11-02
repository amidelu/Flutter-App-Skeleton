import 'package:flutter_opl/domain/auth/entities/profile_entity.dart';
import 'package:get_storage/get_storage.dart';

class GlobalStorage {
  static final GetStorage _storage = GetStorage();
  static const String _authTokenKey = 'auth_token';
  static const String _profileKey = 'profile';

  // Save auth token and profile
  static Future<void> saveAuthToken(String token) async {
    await _storage.write(_authTokenKey, token);
  }

  static Future<void> saveProfile(ProfileEntity profile) async {
    await _storage.write(_profileKey, profile.toJson());
  }

  // Get auth token and profile
  static String? getAuthToken() {
    return _storage.read(_authTokenKey);
  }

  static ProfileEntity? getProfile() {
    Map<String, dynamic>? profileJson = _storage.read(_profileKey);
    if (profileJson != null) {
      return ProfileEntity.fromJson(profileJson);
    }
    return null;
  }

  // Clear Profile model data
  static Future<void> clearProfile() async {
    await _storage.remove(_authTokenKey);
    await _storage.remove(_profileKey);
  }
}