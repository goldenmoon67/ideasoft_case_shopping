import 'package:auto_route/auto_route.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ideasoft_case_project_shop/src/data/models/slider/item/slider_item.dart';
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
  List<SliderItem> sliders = [];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(StartHomeEvent()),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state is HomeLoading) {
            EasyLoading.show();
          } else {
            EasyLoading.dismiss(animation: false);
          }

          if (state is HomeSliderData) {
            sliders.addAll(state.sliderItems);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: homeScreennAppbar(context),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  HomeTitleSlider(
                    sliders: sliders,
                  ),
                  const ActionTitle(),
                  const GridProductLists(),
                  const ActionNowComponent(
                    hasImage: false,
                  ),
                  const CategoryList(),
                  const ActionNowComponent(
                    hasImage: true,
                  ),
                  const Newsteller()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
