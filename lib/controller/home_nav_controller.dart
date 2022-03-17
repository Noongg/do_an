import 'package:get/get.dart';

class HomeNavController extends GetxController{
  int currentIndex=0;

  void changeTabIndex(int index) {
    currentIndex = index;
    update();
  }
}