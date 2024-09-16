import 'package:auto_route/auto_route.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/widgets/appbar/home_appbar.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/widgets/components/action_now_component.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/widgets/components/newsteller.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/widgets/lists/category_list.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/widgets/lists/grid_product_lists.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/widgets/sliders/title_sliders/title_slider.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/widgets/titles/action_shop_title.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          //TODO:: add listeners for states
        },
        builder: (context, state) {
          return Scaffold(
            appBar: homeScreennAppbar(context),
            body: const SingleChildScrollView(
              child: Column(
                children: [
                  HomeTitleSlider(),
                  ActionTitle(),
                  GridProductLists(),
                  ActionNowComponent(
                    hasImage: false,
                  ),
                  CategoryList(),
                  ActionNowComponent(
                    hasImage: true,
                  ),
                  Newsteller()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
