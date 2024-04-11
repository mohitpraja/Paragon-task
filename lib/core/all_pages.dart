import 'package:get/get.dart';
import 'package:paragon_task/core/routes.dart';
import 'package:paragon_task/features/dashboard/binding/dashboard_binding.dart';
import 'package:paragon_task/features/dashboard/view/dashboard_view.dart';
import 'package:paragon_task/features/home/binding/home_binding.dart';
import 'package:paragon_task/features/home/view/home_view.dart';
import 'package:paragon_task/features/signup/binding/signup_binding.dart';
import 'package:paragon_task/features/signup/view/sign_up_view.dart';

List<GetPage> allPages =[
  GetPage(name: Routes.signup, page: () => const SignupView(),binding: SignupBinding()),
  GetPage(name: Routes.dashboard, page: () => const DashboardView(),binding: DashboardBinding()),
  GetPage(name: Routes.home, page: () => const HomeView(),binding: HomeBinding()),
];