import 'package:get/get.dart';

import '../controllers/app_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppController>(() => AppController());
  }
}
