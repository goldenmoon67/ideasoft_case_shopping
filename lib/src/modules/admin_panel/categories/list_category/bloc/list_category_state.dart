part of 'list_category_bloc.dart';

@immutable
sealed class ListCategoryState {}

final class ListCategoryInitial extends ListCategoryState {}

final class ListCategoryLoading extends ListCategoryState {}

final class ListCategoryResultData extends ListCategoryState {
  final List<CategoryModel> categories;

  ListCategoryResultData({required this.categories});
}

final class ListCategorySucces extends ListCategoryState {}
