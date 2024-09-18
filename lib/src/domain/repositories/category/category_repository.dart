import 'package:ideasoft_case_project_shop/src/data/models/category/add_category_request.dart';
import 'package:ideasoft_case_project_shop/src/data/models/category/category_model.dart';

abstract class CategoryRepository {
  Future<void> createCategory(AddCategoryRequest request);
  Future<List<CategoryModel>> getCategories();
  Future<CategoryModel> getCategoryDetail(String id);
  Future<void> deleteCategory(int id);
  Future<List<CategoryModel>> searchCategories(String query);
}
