// ignore_for_file: unnecessary_const

import 'package:dependencyinjection/view/home.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const GetMaterialApp(
    title: 'Dependency-Injection',
    home: Home(),
    // initialBinding: MyBinding(),
  ));
}
