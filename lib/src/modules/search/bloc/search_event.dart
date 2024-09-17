part of 'search_bloc.dart';

@immutable
sealed class SearchEvent {}

class StartSearchEvent extends SearchEvent {
  StartSearchEvent();
}

class ActionSearchEvent extends SearchEvent {
  final String query;
  ActionSearchEvent(this.query);
}
