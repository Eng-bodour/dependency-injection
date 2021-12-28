import 'package:dependencyinjection/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTow extends StatelessWidget {
  const PageTow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page - Two'),
          centerTitle: true,
          backgroundColor: Colors.black26,
          foregroundColor: Colors.white,
        ),
        body: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) => Center(
            child: Text('${controller.count}'),
          ),
        ));
  }
}
