import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:transvirtual_app/utils/constants.dart';

import '../../../core/services/shared_preference_helper.dart';
import '../../model/user.dart';

class LocalStorageRepository {
  final SharedPreferences prefs = SharedPreferenceHelper.instance;

  void setSessionToken(String token) {
    prefs.setString(Constants.prefsUserTokenKey, token);
    return;
  }

  void setUserDetails(User user) {
    prefs.setString(Constants.prefsUserDetailsKey, jsonEncode(user.toJson()));
    return;
  }

  User getUserDetails() {
    final data = prefs.getString(Constants.prefsUserDetailsKey);
    return User.fromJson(jsonDecode(data!) as Map<String, dynamic>);
  }

  bool isLoggedIn() {
    final String? token = prefs.getString(Constants.prefsUserTokenKey);
    return token != null;
  }

  Future<void> destroySession() async {
    await prefs.remove(Constants.prefsUserTokenKey);
    await prefs.remove(Constants.prefsUserDetailsKey);
    return;
  }
}
