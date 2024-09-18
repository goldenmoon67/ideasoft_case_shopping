import 'package:ideasoft_case_project_shop/src/data/models/category/add_category_request.dart';
import 'package:ideasoft_case_project_shop/src/data/models/category/category_model.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/list_response/product_list_response.dart';
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
  @GET("products")
  Future<List<ProductListResponse>> getProducts();

  @GET("products")
  Future<List<ProductListResponse>> searchProducts(@Query('s') String query);

  @GET("products/{id}")
  Future<ProductListResponse> getProductDetail(@Path() int id);

  @POST("categories")
  Future<void> createCategory(@Body() AddCategoryRequest request);

  @GET("categories")
  Future<List<CategoryModel>> getCategories();

  @GET("categories/{id}")
  Future<CategoryModel> getCategoryDetail(@Path() String id);

  @DELETE("categories/{id}")
  Future<void> deleteCategory(@Path() String id);
}
