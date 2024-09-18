part of 'admin_panel_home_bloc.dart';

@immutable
sealed class AdminPanelHomeEvent {}

class StartAdminPanelHomeEvent extends AdminPanelHomeEvent {
  StartAdminPanelHomeEvent();
}
