import 'package:ideasoft_case_project_shop/src/data/models/slider/slider.dart';
import 'package:ideasoft_case_project_shop/src/data/services/client/rest_client.dart';
import 'package:ideasoft_case_project_shop/src/domain/repositories/slider/slider_repository.dart';
import 'package:ideasoft_case_project_shop/src/utils/di/getit_register.dart';

class SliderRepositoryImpl extends SliderRepository {
  final client = getIt<RestClient>();

  @override
  Future<Slider> getSliders() async {
    var list = await client.getSliders();
    return list.first;
  }
}
