import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../utils/constants.dart';

class API {
  final _dio = Dio();

  API() {
    _dio.options.baseUrl = Constants.baseUrl;

    _dio.interceptors.add(PrettyDioLogger());
  }

  Dio get getDio => _dio;
}
