import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../../../utils/custom_text.dart';
import '../../../utils/dimens.dart';
import '../controllers/scheme_detailed_view_controller.dart';

class SchemeDetailedViewView extends GetView<SchemeDetailedViewController> {
  TextEditingController schemDescription = TextEditingController()..text='This is dummy description';
  // var titleConcept = "sf";
  // var sector = "B";
  // var titleFamily = "sf";
  // var titlePerson = "sf";
  // var ApplyNumber = "sf";
  // var agency = "sf";
  // var property = "sf";
  // var name = "sf";
  // var phone = "sf";
  // var birthDate = "sf";
  // var address = "sf";
  // var email = "sf";
  // var gender = "sf";
  // var nID = "sf";
  // var district = "sf";
  // var subDistrict = "sf";
  // var holdingNo = "sf";
  // var subArea = "sf";
  // var union = "sf";
  // var word = "sf";

  @override
  Widget build(BuildContext context) {
    controller.getSchemeView();
     controller.setDisUpaUnionName();
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              child: Container(
                  padding: EdgeInsets.only(
                      left: 20, top: 10, bottom: 10, right: 20),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
                  child: Row(
                    children: [
                      Container(
                          padding:EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColors.background,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: GestureDetector(
                            onTap: (){
                              Get.back();
                            },
                            child: Icon(Icons.arrow_back,
                                color: AppColors.deepBlue, size: 24),
                          )),
                      SizedBox(width: 20,),
                      Center(
                          child: BigText(
                            text: "স্কিম আবেদনের বিবরণ",
                            color: AppColors.deepBlue,
                            size: ConstantSize.largeFont + 3,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  )), preferredSize: Size.fromHeight(70)),
          body: Obx(() => ListView(
            children: [

              Container(
                margin:
                EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Center(
                          child: BigText(
                            text: "স্কিমের তথ্য",
                            fontWeight: FontWeight.bold,
                            color: AppColors.deepBlue,
                            size: ConstantSize.largeFont,
                          )),
                    ),

                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.background,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: BigText(
                          text:
                          "আবেদনের শিরোনাম: ${controller.schemeView.ideaTitle}",
                          fontWeight: FontWeight.bold,
                          size: ConstantSize.mediumFont ),
                    ),

                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, bottom: 10, right: 20),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ]),
                        child: BigText(
                          text:
                          "সেক্টর/খাত: ${controller.schemeView.categoryId}",
                          size: ConstantSize.mediumFont,
                          fontWeight: FontWeight.bold,
                        )),

                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, bottom: 10, right: 20),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.background,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ]),
                        child: BigText(
                          text:
                          "উপকারভোগী গ্রাম/মহল্লা ও পাড়ার সংখ্যা : ${controller.schemeView.noOfBfSizeArea}",
                          fontWeight: FontWeight.bold,
                          size: ConstantSize.mediumFont,
                        )),

                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: BigText(
                        text: "মোট উপকারভোগী সংখ্যা :${controller.schemeView.noOfBfSizeArea}",
                        fontWeight: FontWeight.bold,
                        size: ConstantSize.mediumFont,
                      ),
                    ),

                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, bottom: 10, right: 20),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.background,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ]),
                        child: BigText(
                          text: "উপকারভোগী পরিবারের সংখ্যা :${controller.schemeView.noOfBfSizeFamily}",
                          fontWeight: FontWeight.bold,
                          size: ConstantSize.mediumFont,
                        )),
                    SizedBox(
                      height: 5,
                    ),

                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: BigText(
                        text: "আবেদন গ্রহণকারী সংস্থা :${controller.schemeView.alreadyAgency} ",
                        fontWeight: FontWeight.bold,
                        size: ConstantSize.mediumFont,
                      ),
                    ),

                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, bottom: 10, right: 20),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.background,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ]),
                        child: BigText(
                          text: "এজেন্সির নাম : ${controller.schemeView.alreadyAgency}",
                          fontWeight: FontWeight.bold,
                          size: ConstantSize.mediumFont,
                        )),

                 SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Center(
                          child: BigText(
                            text: "আবেদনকারীর বর্ণনা",
                            fontWeight: FontWeight.bold,
                            color: AppColors.deepBlue,
                            size: ConstantSize.largeFont,
                          )),
                    ),

                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.background,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: BigText(
                          text:
                          "নাম: Beneficiary khagrachori",
                          fontWeight: FontWeight.bold,
                          size: ConstantSize.mediumFont + 2),
                    ),

                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, bottom: 10, right: 20),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ]),
                        child: BigText(
                          text:
                          "মোবাইল নাম্বার: 01686410511",
                          size: ConstantSize.mediumFont,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.background,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: BigText(
                          text:
                          "ইমেইল: benk@gmail.com",
                          fontWeight: FontWeight.bold,
                          size: ConstantSize.mediumFont + 2),
                    ),

                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, bottom: 10, right: 20),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ]),
                        child: BigText(
                          text:
                          "জন্ম তারিখ: 02-Aug-2021",
                          size: ConstantSize.mediumFont,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.background,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: BigText(
                          text:
                          "আবেদনকারীর ঠিকানা: 1205",
                          fontWeight: FontWeight.bold,
                          size: ConstantSize.mediumFont + 2),
                    ),

                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, bottom: 10, right: 20),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ]),
                        child: BigText(
                          text:
                          "লিঙ্গ:পুরুষ",
                          size: ConstantSize.mediumFont,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.background,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: BigText(
                          text:
                          "এনআইডি নং: 1222",
                          fontWeight: FontWeight.bold,
                          size: ConstantSize.mediumFont + 2),
                    ),
                    //Schem details in textEditField
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Center(
                          child: BigText(
                            text: "আবেদনের বর্ণনা",
                            fontWeight: FontWeight.bold,
                            color: AppColors.deepBlue,
                            size: ConstantSize.largeFont,
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(

                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.background,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ]),
                      child:BigText(text: "here we will get data from backend,This dummmy Descrption and here we will get data from backend",size: ConstantSize.mediumFont,),
                      //proposed scheme location and details
                      //
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Center(
                          child: BigText(
                            text:
                            "প্রস্তাবিত স্কিমের অবস্থান ও ভূমি সংক্রান্ত তথ্য",
                            fontWeight: FontWeight.bold,
                            color: AppColors.deepBlue,
                            size: ConstantSize.largeFont,
                          )),
                    ),

                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.background,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: BigText(
                          text:
                          "জেলা: ${controller.districtName}",
                          fontWeight: FontWeight.bold,
                          size: ConstantSize.mediumFont + 2),
                    ),

                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, bottom: 10, right: 20),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ]),
                        child: BigText(
                          text:
                          "উপজেলা: ${controller.upazillaName}",
                          size: ConstantSize.mediumFont,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.background,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: BigText(
                          text:
                          "ইউনিয়ন: ${controller.unionName}",
                          fontWeight: FontWeight.bold,
                          size: ConstantSize.mediumFont + 2),
                    ),

                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, bottom: 10, right: 20),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ]),
                        child: BigText(
                          text:
                          "জমি সংক্রান্ত বিবাদ: ${controller.schemeView.landDispute}",
                          size: ConstantSize.mediumFont,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.background,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: BigText(
                          text:
                          "হোল্ডিং নম্বর: ${controller.schemeView.holdingNo}",
                          fontWeight: FontWeight.bold,
                          size: ConstantSize.mediumFont + 2),
                    ),

                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, bottom: 10, right: 20),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ]),
                        child: BigText(
                          text:
                          " পার্শ্ববর্তী এলাকা: ${controller.schemeView.surroundingArea}",
                          size: ConstantSize.mediumFont,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.background,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: BigText(
                          text:
                          "ওয়ার্ড: ${controller.schemeView.ward}",
                          fontWeight: FontWeight.bold,
                          size: ConstantSize.mediumFont + 2),
                    ),

                    // Space(),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     Container(
                    //         height: 50,
                    //         width: 120,
                    //         child: ElevatedButton(
                    //             onPressed: () {}, child: Text("Show Log"))),
                    //     Container(
                    //         height: 50,
                    //         width: 120,
                    //         child: ElevatedButton(
                    //             onPressed: () {}, child: Text("আবেদন")))
                    //   ],
                    // ),
                    // Space(),
                  ],
                ),
              )
            ],
          ))),
    );
  }
}
