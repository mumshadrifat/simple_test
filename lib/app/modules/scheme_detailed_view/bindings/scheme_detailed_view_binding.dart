import 'package:get/get.dart';

import '../controllers/scheme_detailed_view_controller.dart';

class SchemeDetailedViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SchemeDetailedViewController>(
      () => SchemeDetailedViewController(),
    );
  }
}
