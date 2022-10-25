import 'package:get/get.dart';

import '../controllers/registration_form2_controller.dart';

class RegistrationForm2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistrationForm2Controller>(
      () => RegistrationForm2Controller(),
    );
  }
}
