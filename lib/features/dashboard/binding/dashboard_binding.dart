import 'package:get/get.dart';
import 'package:paragon_task/features/dashboard/controller/dashboard_controller.dart';
import 'package:paragon_task/features/home/controller/home_controller.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(DashboardController());
    Get.put(HomeController());
  }
}