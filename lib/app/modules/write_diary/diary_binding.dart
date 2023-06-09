import 'package:get/get.dart';
import 'package:remood/app/modules/home/home_controller.dart';

import 'diary_controller.dart';

class DiaryBinding implements Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<DiaryController>(() => DiaryController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
