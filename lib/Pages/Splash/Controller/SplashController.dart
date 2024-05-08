import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:levon/Routes/AppRoutes.dart';

class SplashController extends GetxController{
  @override
  void onInit(){
    super.onInit();
    _init();
  }
  Future<void>_init()async{
    await Future.delayed(
      Duration(seconds: 3),
    );
    Get.toNamed(AppRoutes.Welcome);
  }
}