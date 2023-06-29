import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper{
  static late SharedPreferences instance;

  static init() async{
    instance = await SharedPreferences.getInstance();
  }
}