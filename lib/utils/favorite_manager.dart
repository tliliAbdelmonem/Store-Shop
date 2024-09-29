import 'package:shared_preferences/shared_preferences.dart';

class FavoriteManager {
  static SharedPreferences? prefsInstance;

  static init() async {
    prefsInstance = await SharedPreferences.getInstance();
  }

  static Future<List<int?>> getFavorite() async {
    if (prefsInstance == null) {
      await init();
    }
    List<String>? jsonIntList = prefsInstance?.getStringList('favorite');
    if (jsonIntList != null) {
      return jsonIntList.map((item) => int.parse(item)).toList();
    }

    return [];
  }

  static Future<bool?> addToFavorite(int value) async {
    if (prefsInstance == null) {
      await init();
    }
    List<int?> existList = await getFavorite();

    if (existList.contains(value) == false) {
      existList.add(value);
      return prefsInstance?.setStringList(
          'favorite', existList.map((item) => item.toString()).toList());
    }
    return false;
  }

  static Future<bool?> removeFavorite(int value) async {
    if (prefsInstance == null) {
      await init();
    }
    List<int?> existList = await getFavorite();

    if (existList.contains(value) == true) {
      existList.remove(value);
      return prefsInstance?.setStringList(
          'favorite', existList.map((item) => item.toString()).toList());
    }
    return false;
  }

  static Future<bool> isFavoriteContains(int value) async {
    if (prefsInstance == null) {
      await init();
    }
    List<int?> existList = await getFavorite();

    return existList.contains(value);
  }
}
