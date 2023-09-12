import 'package:shared_preferences/shared_preferences.dart';
enum prefKeys {
  TOKEN,
  DEVICE_NAME,
  ID
}
class SpHelper {

  SpHelper._();
  static SpHelper spHelper = SpHelper._();
  SharedPreferences? sharedPreferences;
  initSp() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }
  ///////////////////////////Token///////////////////////////

  SaveToken(String token){
    sharedPreferences!.setString(prefKeys.TOKEN.name, token);
  }
  String? getToken(){
    return sharedPreferences!.getString(prefKeys.TOKEN.name);
  }
  deleteToken(){
    sharedPreferences!.remove(prefKeys.TOKEN.name);
  }
  ///////////////////////////id///////////////////////////

  SaveId(String token){
    sharedPreferences!.setString(prefKeys.ID.name, token);
  }
  String? getId(){
    return sharedPreferences!.getString(prefKeys.ID.name);
  }
  deleteId(){
    sharedPreferences!.remove(prefKeys.ID.name);
  }

  //////////////////////Device Name////////////////////////////

  SaveDeviceName(String deviceName){
    sharedPreferences!.setString(prefKeys.DEVICE_NAME.name, deviceName);
  }
  String? getDeviceName(){
    return sharedPreferences!.getString(prefKeys.DEVICE_NAME.name);
  }
  deleteDeviceName(){
    sharedPreferences!.remove(prefKeys.DEVICE_NAME.name);
  }
}