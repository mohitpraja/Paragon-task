import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';
import 'package:paragon_task/features/dashboard/controller/dashboard_controller.dart';
import 'package:paragon_task/features/home/view/home_view.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeView(),
      bottomNavigationBar: Theme(
          data: ThemeData(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    ),
        child: BottomNavigationBar(
            unselectedItemColor: Colors.black54,
            selectedItemColor: Colors.indigo,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: const TextStyle(fontSize: 11),
            unselectedLabelStyle: const TextStyle(fontSize: 11),
            iconSize: 20,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.group_sharp),
                label: 'Community',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesome5.shapes),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Badge(
                    label: Text("0"), child: Icon(Icons.notifications_none)),
                label: 'Activity',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ]),
      ),
    );
  }
}
