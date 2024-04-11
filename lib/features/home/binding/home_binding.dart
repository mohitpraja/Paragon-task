import 'package:get/get.dart';
import 'package:paragon_task/features/home/controller/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}