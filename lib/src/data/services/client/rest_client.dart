import 'package:ideasoft_case_project_shop/src/data/models/slider/slider.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  @GET("sliders")
  Future<List<Slider>> getSliders();
}
