import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BottomNavigationBarrController extends GetxController{
  var selectedIndex = 0.obs;

  void updateSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}