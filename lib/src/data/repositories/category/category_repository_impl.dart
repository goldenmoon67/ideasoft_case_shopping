import 'package:ideasoft_case_project_shop/src/data/models/category/add_category_request.dart';
import 'package:ideasoft_case_project_shop/src/data/models/category/category_model.dart';
import 'package:ideasoft_case_project_shop/src/data/services/client/rest_client.dart';
import 'package:ideasoft_case_project_shop/src/domain/repositories/category/category_repository.dart';
import 'package:ideasoft_case_project_shop/src/utils/di/getit_register.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  final client = getIt<RestClient>();

  @override
  Future<void> createCategory(AddCategoryRequest request) async {
    await client.createCategory(request);
  }

  @override
  Future<void> deleteCategory(int id) async {
    await client.deleteCategory(id);
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    return await client.getCategories();
  }

  @override
  Future<CategoryModel> getCategoryDetail(String id) async {
    return await client.getCategoryDetail(id);
  }

  @override
  Future<List<CategoryModel>> searchCategories(String query) async {
    return await client.searchCategory(query);
  }
}
