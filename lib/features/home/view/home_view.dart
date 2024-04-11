import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';
import 'package:paragon_task/features/home/controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Private Rooms'),
        actions: const [
          Icon(Icons.add),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
            child: TabBar(
                overlayColor:
                    const MaterialStatePropertyAll(Colors.transparent),
                controller: controller.tabController,
                tabs: const [
                  Text("Public rooms"),
                  Text("Private rooms"),
                ]),
          ),
          Expanded(
              child:
                  TabBarView(controller: controller.tabController, children: [
            _privateRooms(),
            _privateRooms(),
          ]))
        ],
      ),
    );
  }
}

_privateRooms() {
  return ListView.builder(
    itemCount: 20,
    itemBuilder: (context, index) {
      return Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Colors.black12),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 3),
                spreadRadius: 0.3,
                blurRadius: 6)
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(10)),
                color: Colors.grey.shade200,
              ),
              child: const Icon(
                FontAwesome5.shapes,
                size: 50,
                color: Colors.grey,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('Title'), Text('Subhead')],
              ),
            )
          ],
        ),
      );
    },
  );
}
