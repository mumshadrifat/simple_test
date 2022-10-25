import 'dart:math';

import 'package:get/get.dart';

class RegistrationForm2Controller extends GetxController {
  //TODO: Implement RegistrationForm2Controller
  var numGenerator = Random();
  var num1= 0.obs;
  var num2= 0.obs;
  var sum=0.obs;


  var districts = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];
  var thanas = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];

  var district = "".obs;
  var thana = "".obs;

  final count = 0.obs;
  @override
  void onInit() {
    districts.insert(0, "District".tr);
    district.value = districts.first.toString();
    thanas.insert(0, "Thana_Upazilla".tr);
    thana.value = thanas.first.toString();
    num1.value = numGenerator.nextInt(10);
    num2.value = numGenerator.nextInt(10);
    sum.value = num1.value + num2.value;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
