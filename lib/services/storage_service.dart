import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static SharedPreferences? _preferences;

  static Future<SharedPreferences> get _instance async {
    return _preferences ??= await SharedPreferences.getInstance();
  }

  Future<bool> addValue(StorageKeys storageKey, String value) async {
    return (await _instance).setString(storageKey.name, value);
  }

  Future<String?> getValue(StorageKeys storageKey) async {
    return (await _instance).getString(storageKey.name);
  }

  Future<bool> removeValue(StorageKeys storageKey) async {
    return (await _instance).remove(storageKey.name);
  }
}

enum StorageKeys {
  token,
}
