
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimens.dart';
import '../controllers/login_controller.dart';
import '../model/auth_body.dart';

class LoginView extends GetView<LoginController> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController()..text="benk@gmail.com";
  final passwordController = TextEditingController()..text="123456789";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Container(
                      child: Image.asset(
                        'assetes/image/bdlogo1.png',
                        height: Get.height * .1,
                        width: 80,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Center(
                        child: Text('Ministry of chittagong'.tr+" "+'Hill Tracts Affairs'.tr,
                          style:TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: ConstantSize.largeFont),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    child: Image.asset(
                      'assetes/image/g3.png',
                      height: Get.height * .25,
                      width: Get.width,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(color: Colors.black26)),
                      child: TextFormField(
                        controller: emailController,
                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return 'Please_enter'.trParams({'value':'email'.tr});
                          }else if(!value.isEmail){
                            return 'Please_enter_valid'.trParams({'value':'email'.tr});
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Email/Mobile'.tr,
                          prefixIcon: Icon(Icons.person,color: AppColors.deepTeal),
                          fillColor: Colors.white,
                          //fillColor: Colors.green
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 12, right: 12),
                    child: Obx(() => Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(color: Colors.black26)),
                      child: TextFormField(
                        controller: passwordController,
                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return 'Please Enter'.trParams({'value':'password'.tr});
                          }
                          return null;
                        },
                        obscureText: !controller.isPasswordShow.value,
                        decoration: InputDecoration(
                          hintText: 'password'.tr,
                          prefixIcon: Icon(Icons.lock,color:AppColors.deepTeal),
                          suffixIcon: IconButton(
                              icon: Icon(controller.isPasswordShow.value
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                controller.isPasswordShow.value =
                                !controller.isPasswordShow.value;
                              }),
                        ),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text('Forgot password'.tr,
                                style: Get.textTheme.bodyText1
                                    ?.apply(color: AppColors.secondaryColor))),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: AppColors.deepTeal),
                          onPressed: () {
                            AuthBody? authbody=AuthBody();
                            authbody?.loginId=emailController.text;
                            authbody?.password=passwordController.text;
                            authbody?.rememberMe=false;
                            controller.login(authbody!);
                            if(_formKey.currentState?.validate()==true){
                              print(authbody?.loginId);

                            }

                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10),
                            child: Row(
                              children: [
                                // Image.asset(''),
                                Icon(Icons.login,color: Colors.white),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Login'.tr,style:  TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: ConstantSize.mediumFont), )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap:(){
                      controller.registration();
                    },
                    child: Text(
                      'Create New Account'.tr,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.deepBlue,
                          fontSize: ConstantSize.mediumFont),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}