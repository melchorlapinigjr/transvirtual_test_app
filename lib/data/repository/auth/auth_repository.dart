
import 'package:dio/dio.dart';
import 'package:transvirtual_app/core/network/dio_helper.dart';

import '../../model/user.dart';

class AuthRepository {
  final Dio dio = DioHelper.dio;

  Future<User?> signIn(String username, String password) async {
    User? userData;
    try {
      final response = await dio.post('/Login', data: {
        'username': username,
        'password': password,
        "deviceDetails": {
          "deviceManufacturer": "Google",
          "deviceName": "sdk_gphone64_x86_64",
          "versionSource": "com.transvirtual.wms.android",
          "deviceSerial": "b0db5ab296890c26",
          "currentVersion": 109,
          "fcmToken":
              "fuKOZnIiSAapdq0XerDl6J:APA91bFoso8Ynr_ArGKi1MlYzB0N_K1KdpUo_7M6oLlMwwlbXAyER_6-VUe1ysLaEn-wRL4y6_sdUrNqjTsw3AVmBMi-J9duKU8qpS8ziReebl_LDUA4pHCYutz9hGwg7YfQZHXZPzzN"
        }
      });
      userData = User.fromJson(response.data);
      if (userData.success == true) {
        //"success":false,"errorMsg":"Incorrect username or password.",
        return userData;
      } else {
        throw userData.errorMsg ?? 'Something went wrong.';
      }
    } catch (e) {
      rethrow;
    }
  }
}
