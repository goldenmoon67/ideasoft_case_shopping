import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DefaultHeaderInterceptor extends Interceptor {
  PackageInfo? _packageInfo;
  AndroidDeviceInfo? _androidDeviceInfo;
  IosDeviceInfo? _iosDeviceInfo;
  String? _deviceId;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    _packageInfo ??= await PackageInfo.fromPlatform();
    var packageInfo = _packageInfo!;

    options.headers[HttpHeaders.userAgentHeader] =
        "Zero2Hero/${packageInfo.version}-${packageInfo.buildNumber} Dio Flutter ${Platform.operatingSystem}";

    if (Platform.isAndroid) {
      _androidDeviceInfo ??= await DeviceInfoPlugin().androidInfo;
      options.headers["X-Os-Type"] = "A";
      options.headers["X-Os-Version"] = _androidDeviceInfo!.version.release;
      options.headers["X-Device-Manufacturer"] =
          _androidDeviceInfo!.manufacturer;
      options.headers["X-Device-Model"] = _androidDeviceInfo!.model;
      options.headers["X-Build-Signature"] = packageInfo.buildSignature;
    } else if (Platform.isIOS) {
      _iosDeviceInfo ??= await DeviceInfoPlugin().iosInfo;
      options.headers["X-Os-Type"] = "I";
      options.headers["X-Os-Version"] = _iosDeviceInfo!.systemVersion;
      options.headers["X-Device-Model"] = _iosDeviceInfo!.utsname.machine;
    }
    options.contentType = Headers.jsonContentType;
    super.onRequest(options, handler);
  }
}
