import 'package:dependencyinjection/controller/homecontroller.dart';
import 'package:get/get.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController(), permanent: true);

    //Get.lazyPut(() => HomeController() , fenix: true);
  }
}
