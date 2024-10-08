part of 'search_bloc.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchResultData extends SearchState {
  final List<ProductListResponse> productListResponse;

  SearchResultData({required this.productListResponse});
}

final class ErrorSearchData extends SearchState {
  final String error;

  ErrorSearchData({required this.error});
}

final class SearchSucces extends SearchState {}
