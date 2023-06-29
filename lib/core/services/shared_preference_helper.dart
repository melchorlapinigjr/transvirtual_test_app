import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  // initialized our share preferences

  static late SharedPreferences instance;

  static init() async {
    instance = await SharedPreferences.getInstance();
  }
}
