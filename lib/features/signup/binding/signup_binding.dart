import 'package:get/get.dart';
import 'package:paragon_task/features/signup/controller/sign_up_controller.dart';

class SignupBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SignupController());
  }
}