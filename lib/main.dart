import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paragon_task/core/all_pages.dart';
import 'package:paragon_task/core/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Paragon Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
        primarySwatch: Colors.indigo
      ),
      initialRoute: Routes.signup,
      getPages: allPages,
    );
  }
}
