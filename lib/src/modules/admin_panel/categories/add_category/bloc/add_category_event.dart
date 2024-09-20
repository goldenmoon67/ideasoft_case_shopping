part of 'add_category_bloc.dart';

@immutable
sealed class AddCategoryEvent {}

class StartAddCategoryEvent extends AddCategoryEvent {
  StartAddCategoryEvent();
}

class AddCategoryActionEvent extends AddCategoryEvent {
  final String name;
  final int sortOrder;
  final int status;
  final int percent;

  AddCategoryActionEvent({
    required this.name,
    required this.sortOrder,
    required this.status,
    required this.percent,
  });
}
