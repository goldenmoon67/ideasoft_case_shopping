import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/list_response/product_list_response.dart';
import 'package:ideasoft_case_project_shop/src/data/models/slider/item/slider_item.dart';

part 'admin_panel_home_event.dart';
part 'admin_panel_home_state.dart';

class AdminPanelHomeBloc
    extends Bloc<AdminPanelHomeEvent, AdminPanelHomeState> {
  AdminPanelHomeBloc() : super(AdminPanelHomeInitial()) {
    on<StartAdminPanelHomeEvent>((event, emit) async {});
  }
}
