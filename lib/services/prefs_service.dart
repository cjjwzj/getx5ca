import 'package:get/get.dart';
import 'package:get/get_instance/src/lifecycle.dart';
import 'package:getx5_ca/others/constance.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsService extends GetxService {
  final Future<SharedPreferencesWithCache> _prefs =
      SharedPreferencesWithCache.create(
          cacheOptions: SharedPreferencesWithCacheOptions(
              // This cache will only accept the key 'counter'.
              allowList: PrefsKey.values.map((e) => e.name).toSet()));
  late SharedPreferencesWithCache _cachePrefs;
  @override
  void onInit() async {
    super.onInit();
    _cachePrefs = await _prefs;
  }

  void setString(PrefsKey prefsKey, String value) {
    _cachePrefs.setString(prefsKey.name, value);
  }

  String? getString(PrefsKey prefsKey) {
    return _cachePrefs.getString(prefsKey.name);
  }

  void setBool(PrefsKey prefsKey, bool value) {
    _cachePrefs.setBool(prefsKey.name, value);
  }

  bool? getBool(PrefsKey prefsKey) {
    return _cachePrefs.getBool(prefsKey.name);
  }

  void setInt(PrefsKey prefsKey, int value) {
    _cachePrefs.setInt(prefsKey.name, value);
  }

  int? getInt(PrefsKey prefsKey) {
    return _cachePrefs.getInt(prefsKey.name);
  }

  void setDouble(PrefsKey prefsKey, double value) {
    _cachePrefs.setDouble(prefsKey.name, value);
  }

  double? getDouble(PrefsKey prefsKey) {
    return _cachePrefs.getDouble(prefsKey.name);
  }

  void setList(PrefsKey prefsKey, List<String> value) {
    _cachePrefs.setStringList(prefsKey.name, value);
  }

  List<String>? getList(PrefsKey prefsKey) {
    return _cachePrefs.getStringList(prefsKey.name);
  }

  void remove(PrefsKey prefsKey) {
    _cachePrefs.remove(prefsKey.name);
  }

  void reload() {
    _cachePrefs.reloadCache();
  }

  void clear() {
    _cachePrefs.clear();
  }
}
