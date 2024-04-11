import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paragon_task/core/routes.dart';
import 'package:paragon_task/core/widgets/custom_text_field.dart';
import 'package:paragon_task/features/signup/controller/sign_up_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.focusScope!.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
              height: 250,
              width: Get.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.vertical(
                      bottom: Radius.circular(25)),
                  image: DecorationImage(
                      image: AssetImage('assets/india.jpg'),
                      fit: BoxFit.fill)),
              child: SafeArea(
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      Text(
                        'Join Today',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      SizedBox(),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Create an account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  sapcer(),
                  const CustomTextFormField(
                    hintText: 'Disaplay name',
                  ),
                  sapcer(),
                  const CustomTextFormField(
                    hintText: 'Email',
                  ),
                  sapcer(),
                  const CustomTextFormField(
                    hintText: 'Password',
                  ),
                  sapcer(),
                  const CustomTextFormField(
                    hintText: 'Re-enter password',
                  ),
                  sapcer(),
                  const CustomTextFormField(
                    hintText: 'Access code *',
                  ),
                  sapcer(),
                  const Text(
                    'By clicking Sign up you agree to the Terms & conditions and Privacy policy without reservation',
                    style: TextStyle(fontSize: 13),
                  ),
                  sapcer(),
                  MaterialButton(
                    onPressed: () {
                      Get.offAllNamed(Routes.dashboard);
                    },
                    shape: const StadiumBorder(),
                    color: Colors.indigo,
                    child: const Text('Sign up',style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  sapcer() {
    return const SizedBox(
      height: 15,
    );
  }
}
