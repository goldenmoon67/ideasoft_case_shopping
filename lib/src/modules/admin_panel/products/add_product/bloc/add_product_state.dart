part of 'add_product_bloc.dart';

@immutable
sealed class AddProductState {}

final class AddProductInitial extends AddProductState {}

final class AddProductLoading extends AddProductState {}

final class AddProductSuccesData extends AddProductState {
  final int id;
  AddProductSuccesData(this.id);
}

final class ErrorAddProduct extends AddProductState {
  final String error;

  ErrorAddProduct({required this.error});
}
