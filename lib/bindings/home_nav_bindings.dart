import 'package:do_an/controller/home_nav_controller.dart';
import 'package:get/get.dart';


class HomeNavBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeNavController>(HomeNavController());
  }
}