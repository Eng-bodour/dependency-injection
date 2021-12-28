import 'package:dependencyinjection/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class PageTow extends StatelessWidget {
  PageTow({Key? key}) : super(key: key);
  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page - Two'),
        centerTitle: true,
        backgroundColor: Colors.black26,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('${controller.count}'),
      ),
    );
  }
}
