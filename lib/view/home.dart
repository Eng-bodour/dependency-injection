import 'package:dependencyinjection/controller/homecontroller.dart';
import 'package:dependencyinjection/view/page1.dart';
import 'package:dependencyinjection/view/page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final controller = Get.lazyPut(() => HomeController(), fenix: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dependency-Injection'),
        centerTitle: true,
        backgroundColor: Colors.black26,
        foregroundColor: Colors.white,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              //for cleare from memory
              Get.to(() => PageOne());
            },
            child: const Text(
              'Page1',
              style: TextStyle(fontSize: 40),
            ),
          ),
          const SizedBox(
            width: 30.0,
          ),
          MaterialButton(
            onPressed: () {
              Get.to(() => PageTow());
            },
            child: const Text(
              'Page2',
              style: TextStyle(fontSize: 40),
            ),
          )
        ],
      )),
    );
  }
}
