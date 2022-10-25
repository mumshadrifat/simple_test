import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class RegistrationController extends GetxController {
  //TODO: Implement RegistrationController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  void nextButtonClick(){
    Get.toNamed(Routes.REGISTRATION_FORM2);
  }

}
