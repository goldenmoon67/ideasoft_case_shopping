import 'package:ideasoft_case_project_shop/src/data/common/return_id_model.dart';
import 'package:ideasoft_case_project_shop/src/data/models/image/create_image_model.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/add/add_product_request.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/list_response/product_list_response.dart';

abstract class ProductRepository {
  Future<List<ProductListResponse>> getProducts();
  Future<List<ProductListResponse>> searchProducts(String query);
  Future<ProductListResponse> getProductDetail(int id);
  Future<ReturnIdModel> createProduct(AddProductRequest request);
  Future<void> uploadImage(CreateImageModel request);
  Future<void> deleteProduct(int id);
}
