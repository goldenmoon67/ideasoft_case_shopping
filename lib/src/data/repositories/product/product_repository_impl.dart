import 'package:ideasoft_case_project_shop/src/data/models/product/list_response/product_list_response.dart';
import 'package:ideasoft_case_project_shop/src/data/services/client/rest_client.dart';
import 'package:ideasoft_case_project_shop/src/domain/repositories/product/product_repository.dart';
import 'package:ideasoft_case_project_shop/src/utils/di/getit_register.dart';

class ProductRepositoryImpl extends ProductRepository {
  final client = getIt<RestClient>();

  @override
  Future<List<ProductListResponse>> getProducts() async {
    var list = await client.getProducts();
    return list;
  }

  @override
  Future<List<ProductListResponse>> searchProducts(String query) async {
    var list = await client.getProducts();
    return list;
  }
}
