import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:ideasoft_case_project_shop/src/configs/flavors.dart';
import 'package:ideasoft_case_project_shop/src/data/services/interceptors/auth_interceptor.dart';
import 'package:ideasoft_case_project_shop/src/data/services/interceptors/default_header_interceptor.dart';
import 'package:ideasoft_case_project_shop/src/data/services/interceptors/error_interceptor.dart';
import 'package:ideasoft_case_project_shop/src/data/services/transformers/flutter_transformer.dart';
import 'package:ideasoft_case_project_shop/src/utils/di/getit_register.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RestApiService {
  static final RestApiService _singleton = RestApiService._internal();

  factory RestApiService() {
    return _singleton;
  }

  late Dio _dio;

  static Dio get dio => _singleton._dio;

  RestApiService._internal() {
    _dio = _createDio();
  }

  Dio _createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: F.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(minutes: 2),
      receiveTimeout: const Duration(minutes: 2),
      headers: {
        'Authorization': 'AX5FTZ7UBAABUDT6XYYPW7LX',
      },
    ));
    dio.interceptors.add(DefaultHeaderInterceptor());

    dio.interceptors.add(AuthInterceptor(dio, onInvalid: (error) {
      // logout from app
      return;
    }));

    if (F.logging) {
      final logger = getIt<Logger>();
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        logPrint: (obj) => logger.i(obj),
      ));
    }

    dio.interceptors.add(ErrorInterceptor());

    if (F.appFlavor == Flavor.dev && kDebugMode) {
      (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient =
          _onHttpClientCreate;
    }

    return dio;
  }

  Dio _createOAuthDio() {
    var oauthDio = Dio(BaseOptions(
      baseUrl: F.baseUrl,
      connectTimeout: const Duration(milliseconds: 60 * 1000),
      receiveTimeout: const Duration(milliseconds: 60 * 1000),
      headers: {
        'Authorization':
            'Bearer your_static_access_token', // Buraya token'ı ekleyin
      },
    ));

    oauthDio.transformer = FlutterTransformer();

    if (F.appFlavor == Flavor.dev) {
      final logger = getIt<Logger>();
      oauthDio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        maxWidth: 180,
        logPrint: (obj) => logger.i(obj),
      ));
    }

    oauthDio.interceptors.add(ErrorInterceptor());

    return oauthDio;
  }

  HttpClient _onHttpClientCreate() {
    final client = HttpClient(
      context: SecurityContext(withTrustedRoots: false),
    );
    client.badCertificateCallback = (cert, host, port) => true;
    return client;
  }
}
