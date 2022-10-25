import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../../../utils/dimens.dart';
import '../../registration/views/registration_view.dart';
import '../controllers/registration_form2_controller.dart';

class RegistrationForm2View extends GetView<RegistrationForm2Controller> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _fatherNameController = TextEditingController();
  final _addressController = TextEditingController();
  final _permanentAddressController = TextEditingController();
  final _emailMobileController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _verifySumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Space(),
                  Center(
                    child: Container(
                      child: Image.asset(
                        'assetes/image/bdlogo1.png',
                        height: 75,
                        width: 75,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ministry of chittagong'.tr + " " + 'Hill Tracts Affairs'.tr,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: ConstantSize.largeFont),
                    maxLines: 1,
                  ),
                  Space(),
                  Text(
                    'New Registration'.tr,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.deepBlue,
                        fontSize: ConstantSize.mediumFont + 2),
                  ),
                  Space(),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black26),
                      color: AppColors.background,

                    ),
                    child: TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: 'Name'.tr,
                        prefixIcon:Icon(Icons.person,color: AppColors.deepTeal),
                        //fillColor: Colors.green
                      ),
                    ),
                  ),
                  Space(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black26),
                      color: AppColors.background,

                    ),
                    child: TextFormField(

                      controller: _fatherNameController,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: 'Father Name'.tr,
                        prefixIcon: Icon(Icons.person,color: AppColors.deepTeal),
                      ),
                    ),
                  ),
                  Space(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Permanent Address'.tr,
                      style:TextStyle(color: Colors.black45),
                      maxLines: 1,
                    ),
                  ),
                  Space(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10,top: 25,bottom: 15),
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black26),
                      color: AppColors.background,

                    ),
                    child: TextFormField(
                      controller: _permanentAddressController,
                      decoration: InputDecoration(
                        hintText: 'Permanent Address'.tr,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Space(),
                  Space(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Present Address'.tr,
                      style: TextStyle(color: Colors.black45),
                      maxLines: 1,
                    ),
                  ),
                  Space(height: 10,),
                  Obx(() => Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black12),
                      color: Colors.white,

                    ),
                    child: DropdownButtonFormField(
                      style: TextStyle(color: Colors.black45),
                      items: controller.districts.map((String category) {
                        return new DropdownMenuItem(
                          value: category,
                          child: Text("District"),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        // do other stuff with _category
                        controller.district.value = newValue.toString();
                      },
                      value: controller.district.value,
                    ),
                  )),
                  Space(
                    height: 10,
                  ),
                  Obx(() => Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black26),

                    ),               child: DropdownButtonFormField(
                    style: TextStyle(color: Colors.black54),
                      items: controller.thanas.map((String category) {
                        return new DropdownMenuItem(

                          value: category,
                          child: Text("Thana"),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        // do other stuff with _category
                        controller.thana.value = newValue.toString();
                      },
                      value: controller.thana.value,
                    ),
                  )),
                  Space(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10,top: 15,bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black26),

                    ),
                    child: TextFormField(
                      controller: _addressController,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: 'Address'.tr,
                      ),
                    ),
                  ),
                  Space(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black26),
                      color: Colors.white,),
                    child: TextFormField(
                      controller: _emailMobileController,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: 'Email mobile'.tr,
                      ),
                    ),
                  ),
                  Space(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black26),
                      color: Colors.white,),
                    child: TextFormField(

                      controller: _passwordController,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: 'Password'.tr,
                      ),
                    ),
                  ),
                  Space(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black26),
                      color: Colors.white,),
                    child: TextFormField(
                      controller: _confirmPasswordController,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: 'Confirm Password'.tr,
                      ),
                    ),
                  ),
                  Space(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 45,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black26
                        ),
                        child: Center(child: Text("  6  *  7  "))
                      ),
                      Space(width: 10,),
                      Container(
                        width: 80,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(color: Colors.black26)
                        ),
                        child: TextFormField(
                          controller: _verifySumController,
                        ),
                      ),
                    ],
                  ),
                  Space(),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 210,
                      height: 50,
                      child: ElevatedButton(

                        style: ElevatedButton.styleFrom(
                          primary: AppColors.deepTeal,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )

                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 12),
                          child: Text(
                            'Submit'.tr,
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  }
