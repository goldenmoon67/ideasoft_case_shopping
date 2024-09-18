part of 'add_category_bloc.dart';

@immutable
sealed class AddCategoryState {}

final class AddCategoryInitial extends AddCategoryState {}

final class AddCategoryLoading extends AddCategoryState {}

final class AddCategorySuccesData extends AddCategoryState {
  AddCategorySuccesData();
}
