import 'package:dio/dio.dart';

import '../../utils/constants.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
          baseUrl: Constants.baseURL,
          receiveDataWhenStatusError: true,
          headers: {
            'Content-Type': 'application/json',
          }
      ),

    );
  }

}