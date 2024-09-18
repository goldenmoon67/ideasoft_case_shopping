part of 'list_category_bloc.dart';

@immutable
sealed class ListCategoryEvent {}

class StartListCategoryEvent extends ListCategoryEvent {
  StartListCategoryEvent();
}

class ActionListCategoryEvent extends ListCategoryEvent {
  final String query;
  ActionListCategoryEvent(this.query);
}
