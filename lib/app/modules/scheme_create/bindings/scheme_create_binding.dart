import 'package:get/get.dart';

import '../controllers/scheme_create_controller.dart';

class SchemeCreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SchemeCreateController>(
      () => SchemeCreateController(),
    );
  }
}
