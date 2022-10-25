import 'package:get/get.dart';

import '../controllers/complain_create_controller.dart';

class ComplainCreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ComplainCreateController>(
      () => ComplainCreateController(),
    );
  }
}
