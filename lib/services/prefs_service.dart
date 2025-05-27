import 'package:get/get.dart';
import 'package:get/get_instance/src/lifecycle.dart';
import 'package:getx5_ca/others/constance.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsService extends GetxService {
  final SharedPreferencesAsync _prefs = SharedPreferencesAsync();

  void setString(PrefsKey prefsKey, String value) {
    _prefs.setString(prefsKey.name, value);
  }

  Future<String?> getString(PrefsKey prefsKey) async {
    return await _prefs.getString(prefsKey.name);
  }

  void setBool(PrefsKey prefsKey, bool value) {
    _prefs.setBool(prefsKey.name, value);
  }

  Future<bool?> getBool(PrefsKey prefsKey) async {
    return await _prefs.getBool(prefsKey.name);
  }

  void setInt(PrefsKey prefsKey, int value) {
    _prefs.setInt(prefsKey.name, value);
  }

  Future<int?> getInt(PrefsKey prefsKey) async {
    return await _prefs.getInt(prefsKey.name);
  }

  void setDouble(PrefsKey prefsKey, double value) {
    _prefs.setDouble(prefsKey.name, value);
  }

  Future<double?> getDouble(PrefsKey prefsKey) async {
    return await _prefs.getDouble(prefsKey.name);
  }

  void setList(PrefsKey prefsKey, List<String> value) {
    _prefs.setStringList(prefsKey.name, value);
  }

  Future<List<String>?> getList(PrefsKey prefsKey) async {
    return await _prefs.getStringList(prefsKey.name);
  }

  void remove(PrefsKey prefsKey) {
    _prefs.remove(prefsKey.name);
  }

  void clear() {
    _prefs.clear();
  }
}
