part of 'list_category_bloc.dart';

@immutable
sealed class ListCategoryEvent {}

class StartListCategoryEvent extends ListCategoryEvent {
  StartListCategoryEvent();
}

class DeleteListCategoryEvent extends ListCategoryEvent {
  final int id;
  DeleteListCategoryEvent(this.id);
}

class ListCategorySearchEvent extends ListCategoryEvent {
  final String query;
  ListCategorySearchEvent(this.query);
}
