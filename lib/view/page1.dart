import 'package:dependencyinjection/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class PageOne extends StatelessWidget {
  PageOne({Key? key}) : super(key: key);
  //permenet to save value in memeory like:signIN , ٍسلة المشتريات
  HomeController controller = Get.put(HomeController(), permanent: true);
  // HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page - One'),
        centerTitle: true,
        backgroundColor: Colors.black26,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                controller.increment();
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              width: 30.0,
            ),
            GetBuilder<HomeController>(
              //because the PUT including initialize
              // init: HomeController(),
              builder: (controller) => Text('${controller.count}'),
            ),
            const SizedBox(
              width: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: MaterialButton(
                onPressed: () {
                  controller.decrement();
                },
                child: const Icon(Icons.minimize),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
