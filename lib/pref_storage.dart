import 'package:shared_preferences/shared_preferences.dart';

class StoragePref {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  void setString(String key, String value) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString(key, value);
  }

  void setInteger(String key, int value) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setInt(key, value);
  }

  void setBoolean(String key, bool value) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setBool(key, value);
  }

  Future<String?> getString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    return prefs.getString(key);
  }

  getBoolean(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return bool
    return prefs.getBool(token);
  }

  getInt(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return int
    int? intValue = prefs.getInt(token);
    return intValue;
  }

  getDouble(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return double
    double? doubleValue = prefs.getDouble(token);
    return doubleValue;
  }
}
// Future<Authorizations> getAuthorization() async {
//   StoragePref storage = StoragePref();
//   Authorizations authorizations = Authorizations();
// storage.setString("key", "value");
//   String? accessToken = await storage.getString(AUTHORIZATION_TOKEN);
//   authorizations.authorization_token =
//   accessToken == null ? "" : "JWT " + accessToken;
//   authorizations.content_type = "application/json";
//   return authorizations;
// }