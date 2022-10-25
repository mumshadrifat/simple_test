import 'package:flutter/material.dart';

import 'package:get/get.dart';
import'package:flutter_quill/flutter_quill.dart';
import '../../../utils/colors.dart';
import '../../../utils/custom_text.dart';
import '../../../utils/dimens.dart';
import '../../login/model/districts.dart';
import '../controllers/scheme_create_controller.dart';
import '../normal/applicatin_reciever_model.dart';
import '../normal/category_sector.dart';
import '../normal/create_scheme_model.dart';

class SchemeCreateView extends GetView<SchemeCreateController> {


  QuillController _controller = QuillController.basic();


  final _formKey = GlobalKey<FormState>();
  var selectValue = "".obs;
  var selectValue3 = "".obs;
  var selectValue2 = "".obs;
  var expandable = false.obs;

  // List<Data>? word = Get.find<CommonController>().words.value.data;
  @override
  Widget build(BuildContext context) {

    controller.loadApplicationRecieverList();

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              // Navigator.pop(context);
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.black,
            ),
          ),
          title: Row(
            children: [

              BigText(text:'আইডিয়া জমা দেওয়ার ফর্ম'.tr,
                  fontWeight: FontWeight.bold,size:ConstantSize.largeFont,color: AppColors.deepBlue),
            ],
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: AppColors.background,
            child: Form(
              //autovalidateMode: AutovalidateMode.disabled,
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                              padding:
                              EdgeInsets.only(left: 10, top: 10, bottom: 10),
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
                                ],
                              ),
                              child:BigText(text:"প্রকল্প" ,fontWeight: FontWeight.bold,size: ConstantSize.mediumFont,color: AppColors.deepBlue,)


                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 10, bottom: 5, top: 10),
                            child:BigText(text: "শিরোনাম",size: ConstantSize.mediumFont,fontWeight: FontWeight.bold,)


                        ),
                        Container(
                          margin: EdgeInsets.only(left:10,right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.black),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            child: TextFormField(
                              controller: controller.titleController,
                              validator: (value) =>
                              value!.isEmpty ? '*field required' : null,
                              decoration: InputDecoration(

                                  hintText: 'শিরোনাম '.tr,
                                  labelStyle: TextStyle(fontSize: ConstantSize.mediumFont,)),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Obx(() => controller.category.value.isNotEmpty?
                        Container(

                          margin: EdgeInsets.only(left: 10,right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.black)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            child: DropdownButtonFormField(
                              iconSize: 26,
                              items:controller.category.map((Sector sector) {
                                return DropdownMenuItem(
                                    value: sector,
                                    child: BigText(text:sector.name.toString(),size: ConstantSize.smallFont));
                              }).toList(),
                              onChanged: (var newValue) {
                                newValue as Sector;
                                controller.selectedCategory=newValue.name;
                                //  controller.ward.value = newValue.toString();
                              },
                              validator: (value) =>
                              value == null ? "*field required " : null,
                              hint: BigText(text:"সেক্টর/খাত",size: ConstantSize.mediumFont,fontWeight: FontWeight.normal),
                            ),
                          ),
                        ):Container(color: Colors.black,)),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(left:10,right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 4,
                                  ),
                                  child: TextFormField(
                                    controller: controller
                                        .numberofBeneficiaryVillagesController,
                                    validator: (value) =>
                                    value!.isEmpty ? "*field required" : null,
                                    decoration: InputDecoration(
                                        hintText:
                                        'উপকারভোগী গ্রাম/মহল্লা ও পাড়ার সংখ্যা',
                                        labelStyle: TextStyle(fontSize: ConstantSize.mediumFont)),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(left:10,right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 4, right: 10),
                                  child: TextFormField(
                                    controller:
                                    controller.numberofBeneficiaryFamilies,
                                    validator: (value) =>
                                    value!.isEmpty ? "*field required" : null,
                                    decoration: InputDecoration(
                                        hintText: 'উপকারভোগী পরিবারের সংখ্যা',
                                        // labelText:  "llslsl ${Get.find<CommonController>().districts.value.district?[0].name}",
                                        labelStyle: Get.textTheme.subtitle2),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,

                              child: Container(
                                margin: EdgeInsets.only(left:10,right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 10, right: 4),
                                  child: TextFormField(
                                    controller:
                                    controller.totalNumberofBeneficiaries,
                                    validator: (value) =>
                                    value!.isEmpty ? "*field required" : null,
                                    decoration: InputDecoration(
                                        hintText: 'মোট উপকারভোগী সংখ্যা',
                                        labelStyle: Get.textTheme.subtitle2),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(left:10,right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 5, right: 10),
                                  child: Obx(() => DropdownButtonFormField(
                                    items: controller.applicationRecieverList?.value!
                                        .map((ApplicationReciever? category) {
                                      return DropdownMenuItem(
                                          value: category,
                                          child: BigText(
                                            text:category!.bnName.toString(),size: ConstantSize.smallFont,));
                                    }).toList(),
                                    onChanged: (newValue) {
                                      newValue as ApplicationReciever;

                                      controller.applicationRcvName.value = newValue.id!;
                                    },
                                    // value: 1,
                                    validator: (value) => value ==null
                                        ? "*field required "
                                        : null,
                                    hint: BigText(text:"গ্রহণকারী সংস্থা",size: ConstantSize.mediumFont),
                                  )),
                                ),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 10),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 10, right: 10),
                        //   child: DropdownButtonFormField(
                        //     items: controller.obj.wards.value.data
                        //         ?.map((Data category) {
                        //       return DropdownMenuItem(
                        //           value: category,
                        //           child: BigText(text:category.name.toString(),size: ConstantSize.smallFont,));
                        //     }).toList(),
                        //     onChanged: (var newValue) {
                        //       newValue as Data;
                        //       // controller.ward.value = newValue.toString();
                        //       controller.selectedCategory=newValue.name;
                        //     },
                        //     // value: controller.ward.value,
                        //     validator: (value) =>
                        //     value == null ? "*field required " : null,
                        //     hint: BigText(text:"ওয়ার্ড",size: ConstantSize.smallFont),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            padding:
                            EdgeInsets.only(left: 10, top: 10, bottom: 10),
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
                              ],
                            ),
                            child: BigText(
                              text:'এজেন্সি'.tr,
                              size: ConstantSize.mediumFont,color: AppColors.deepBlue,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Obx(() => Container(
                           // padding: EdgeInsets.only(left:10,right: 10),
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      BigText(
                                          text:'অন্য কোন সংস্থায় আবেদন করেছে কি না ?',size: ConstantSize.smallFont),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Radio(
                                                  value: "হ্যাঁ",
                                                  groupValue:
                                                  selectValue.value,
                                                  onChanged: (value) {
                                                    selectValue.value =
                                                        value.toString();
                                                    if(value=="হ্যাঁ"){
                                                      controller.apAnotherAgency="1";

                                                    }
                                                    else {

                                                      controller.apAnotherAgency="0";
                                                    }

                                                  }),
                                              BigText(text:'হ্যাঁ',size: ConstantSize.smallFont),
                                              Radio(
                                                  value: "না",
                                                  groupValue:
                                                  selectValue.value,
                                                  onChanged: (value) {
                                                    selectValue.value =
                                                        value.toString();
                                                  }),
                                              BigText(text:'না',size: ConstantSize.smallFont),
                                            ],
                                          ),
                                          selectValue.value == 'হ্যাঁ'
                                              ? Column(
                                            children: [
                                              BigText(
                                                  text: 'দ্বৈততা থাকা সংস্থা',size: ConstantSize.smallFont),
                                              Row(
                                                children: [
                                                  Radio(
                                                      value: "এলজিইডি",
                                                      groupValue:
                                                      selectValue3
                                                          .value,
                                                      onChanged:
                                                          (value) {
                                                        selectValue3
                                                            .value =
                                                            value
                                                                .toString();
                                                      }),
                                                  BigText(text:'এলজিইডি',size: ConstantSize.smallFont),
                                                  Radio(
                                                      value:
                                                      "জেলা পরিষদ",
                                                      groupValue:
                                                      selectValue3
                                                          .value,
                                                      onChanged:
                                                          (value) {
                                                        selectValue3
                                                            .value =
                                                            value
                                                                .toString();
                                                      }),
                                                  BigText(text:'জেলা পরিষদ',size: ConstantSize.smallFont),
                                                  Radio(
                                                      value:
                                                      " উপজেলা পরিষদ",
                                                      groupValue:
                                                      selectValue3
                                                          .value,
                                                      onChanged:
                                                          (value) {
                                                        selectValue3
                                                            .value =
                                                            value
                                                                .toString();
                                                      }),
                                                  BigText(text:' উপজেলা পরিষদ',size: ConstantSize.smallFont),

                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Radio(
                                                      value: " পৌরসভা",
                                                      groupValue:
                                                      selectValue3
                                                          .value,
                                                      onChanged:
                                                          (value) {
                                                        selectValue3
                                                            .value =
                                                            value
                                                                .toString();
                                                      }),
                                                  BigText(text:' পৌরসভা',size: ConstantSize.smallFont),
                                                  Radio(
                                                      value:
                                                      "সওজ বিভাগ",
                                                      groupValue:
                                                      selectValue3
                                                          .value,
                                                      onChanged:
                                                          (value) {
                                                        selectValue3
                                                            .value =
                                                            value
                                                                .toString();
                                                      }),
                                                  BigText(text:'সওজ বিভাগ',size: ConstantSize.smallFont),
                                                  Radio(
                                                      value: " এনজিও ",
                                                      groupValue:
                                                      selectValue3
                                                          .value,
                                                      onChanged:
                                                          (value) {
                                                        selectValue3
                                                            .value =
                                                            value
                                                                .toString();
                                                      }),
                                                  BigText(text:' এনজিও ',size: ConstantSize.smallFont),
                                                  Radio(
                                                      value: "অন্যান্য",
                                                      groupValue:
                                                      selectValue3
                                                          .value,
                                                      onChanged:
                                                          (value) {
                                                        selectValue3
                                                            .value =
                                                            value
                                                                .toString();
                                                      }),
                                                  BigText(text:'অন্যান্য',size: ConstantSize.smallFont),
                                                ],
                                              ),
                                            ],
                                          )
                                              : Container(),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                          Obx(
                                () => Container(
                                 // padding: EdgeInsets.only(left:10,right: 10),
                                  child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  BigText(
                                      text:'অন্য কোন সংস্থা ইতোপূর্বে কোন স্কিম বাস্তবায়ন করেছে কি না',size: ConstantSize.smallFont),
                                  Row(
                                    children: [
                                      Radio(
                                          value: "হ্যাঁ",
                                          groupValue: selectValue2.value,
                                          onChanged: (value) {
                                            selectValue2.value = value.toString();
                                            expandable.value = true;
                                            if(value=="হ্যাঁ"){
                                              controller.alreadyAgencies="1";
                                            }
                                            else{

                                            }
                                          }),
                                      BigText(text:'হ্যাঁ',size: ConstantSize.smallFont),
                                      Radio(
                                          value: "না",
                                          groupValue: selectValue2.value,
                                          onChanged: (value) {
                                            selectValue2.value = value.toString();
                                            if(value=="না"){
                                              controller.alreadyAgencies="0";
                                            }
                                            else{

                                            }
                                            expandable.value = false;
                                          }),
                                      BigText(text:'না',size: ConstantSize.smallFont),
                                    ],
                                  ),
                                  expandable.value == true
                                      ? TextField(
                                    controller: controller.alreadySchemeOrgList,
                                    obscureText: false,

                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding: EdgeInsets.only(
                                            left: 20,
                                            top: 15,
                                            bottom: 15,
                                            right: 20),
                                        hintText: "ইতিপূর্বে স্কিম বাস্তবায়ন করা সংস্থার নাম",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(5),
                                        )),
                                  )
                                      : Container(),
                              ],
                            ),
                                ),
                          )
                        ],
                      )),
               SizedBox(height: 10,),
                  Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(
                          left: 10, top: 10, bottom: 10,right: 10),
                      child: Column(

                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, top: 10, bottom: 10,right: 10),
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
                              ],
                            ),
                            child: BigText(
                              text:'প্রস্তাবিত প্রকল্পের/স্কিমের অবস্থান ও ভূমি সংক্রান্ত তথ্য'
                                  .tr,
                              size: ConstantSize.mediumFont,
                              color:AppColors.deepBlue,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(

                            children: [
                              Container(
                                width: 65,
                                  child: BigText(text: "জেলা:",size: ConstantSize.mediumFont,fontWeight: FontWeight.bold)),
                              SizedBox(width: ConstantSize.width10,),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                                  

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColors.background,
                                    border: Border.all(color: Colors.black)

                                  ),
                                  child: BigText(text: "পটুয়াখালী",size: ConstantSize.mediumFont,),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                               width: 65,
                                  child: BigText(text: "উপজেলা",size: ConstantSize.mediumFont,fontWeight: FontWeight.bold)),
                              SizedBox(width: ConstantSize.width10,),
                              Expanded(
                                child: Container(

                                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColors.background,
                                      border: Border.all(color: Colors.black)

                                  ),
                                  child: BigText(text: "পটুয়াখালী",size: ConstantSize.mediumFont,),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                width: 65,
                                  child: BigText(text: "ইউনিয়ন:",size: ConstantSize.mediumFont,fontWeight: FontWeight.bold)),
                              SizedBox(width: ConstantSize.width10,),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),

                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.background,
                                      border: Border.all(color: Colors.black)

                                  ),
                                  child: BigText(text: "সবজাবাগ",size: ConstantSize.mediumFont,),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(width: 65,child: BigText(text: "ওয়ার্ড:",size: ConstantSize.mediumFont,fontWeight: FontWeight.bold)),
                              SizedBox(width: ConstantSize.width10,),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),

                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.background,
                                      border: Border.all(color: Colors.black)

                                  ),
                                  child: BigText(text: "4",size: ConstantSize.mediumFont,),
                                ),
                              ),
                            ],
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //
                          //   children: [
                          //     // Expanded(
                          //     //   flex: 1,
                          //     //   child: Padding(
                          //     //     padding:
                          //     //     const EdgeInsets.only(left: 10, right: 4),
                          //     //     child: Obx(() => DropdownButtonFormField(
                          //     //       items: controller.unions!
                          //     //           .map((Union? category) {
                          //     //         return DropdownMenuItem(
                          //     //             value: category,
                          //     //             child: BigText(
                          //     //               text:category!.name.toString(),size: ConstantSize.smallFont,));
                          //     //       }).toList(),
                          //     //       onChanged: (newValue) {
                          //     //         newValue as Union;
                          //     //
                          //     //         controller.union?.value = newValue;
                          //     //       },
                          //     //       value: controller.union?.value,
                          //     //       validator: (value) => value == null
                          //     //           ? "*field required "
                          //     //           : null,
                          //     //       hint: BigText(text:"Select Union",size: ConstantSize.smallFont),
                          //     //     )),
                          //     //   ),
                          //     // ),
                          //     // Expanded(
                          //     //   flex: 1,
                          //     //   child: Padding(
                          //     //     padding:
                          //     //     const EdgeInsets.only(left: 4, right: 10),
                          //     //     child: DropdownButtonFormField(
                          //     //       items: controller.obj.wards.value.data
                          //     //           ?.map((Data category) {
                          //     //         return DropdownMenuItem(
                          //     //             value: category,
                          //     //             child:
                          //     //             BigText(text:category.name.toString(),size: ConstantSize.smallFont,));
                          //     //       }).toList(),
                          //     //       onChanged: (var newValue) {
                          //     //        // newValue as Data;
                          //     //        // controller.ward.value = newValue;
                          //     //         // controller.ward.value = newValue.toString();
                          //     //       },
                          //     //       // value: controller.ward.value,
                          //     //       validator: (value) => value == null
                          //     //           ? " *field required"
                          //     //           : null,
                          //     //       hint: BigText(text:" Select Word ",size: ConstantSize.smallFont),
                          //     //     ),
                          //     //   ),
                          //     // )
                          //     Row(
                          //       mainAxisAlignment: MainAxisAlignment.start,
                          //       children: [
                          //         BigText(text: "Union:",size: ConstantSize.mediumFont),
                          //         SizedBox(width: ConstantSize.width10,),
                          //         Container(
                          //           decoration: BoxDecoration(
                          //             borderRadius: BorderRadius.circular(5),
                          //             color: AppColors.background,
                          //
                          //           ),
                          //           child: BigText(text: "User Union",size: ConstantSize.mediumFont,),
                          //         ),
                          //       ],
                          //     ),
                          //     Row(
                          //       mainAxisAlignment: MainAxisAlignment.start,
                          //       children: [
                          //         BigText(text: "Ward:",size: ConstantSize.mediumFont),
                          //         SizedBox(width: ConstantSize.width10,),
                          //         Container(
                          //           decoration: BoxDecoration(
                          //             borderRadius: BorderRadius.circular(5),
                          //             color: AppColors.background,
                          //
                          //           ),
                          //           child: BigText(text: "User Ward",size: ConstantSize.mediumFont,),
                          //         ),
                          //       ],
                          //     )
                          //
                          //
                          //   ],
                          // ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              // Expanded(
                              //   flex: 1,
                              //   child: Padding(
                              //     padding:
                              //     const EdgeInsets.only(left: 10, right: 4),
                              //
                              //     child: TextFormField(
                              //       controller: controller.ledgerHoldingNoandSpotNumber,
                              //       validator: (value)=>value!.isEmpty?" ":null,
                              //       decoration: InputDecoration(
                              //           labelText: 'খতিয়ান/হোল্ডিং নং ও দাগ নম্বর',
                              //           labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: ConstantSize.mediumFont,color: Colors.black)),
                              //     ),
                              //   ),
                              // ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black),
                                    color: AppColors.background,
                                  ),
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                    child: TextFormField(
                                      //  controller: controller.boundary,
                                      validator: (value) => value!.isEmpty
                                          ? "*field required "
                                          : null,
                                      decoration: InputDecoration(
                                          hintText: 'খতিয়ান/হোল্ডিং নং ও দাগ নম্বর',
                                          labelStyle: Get.textTheme.subtitle2),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 0),
                            child: Container(
                              padding: EdgeInsets.only(left:10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black),
                                color: AppColors.background,
                              ),
                              child: TextFormField(
                                controller: controller.streetHouseName,
                                validator: (value) =>
                                value!.isEmpty ? "*field required " : null,
                                decoration: InputDecoration(
                                    hintText: 'রাস্তা/বাড়ির নাম',
                                    labelStyle: Get.textTheme.subtitle2),
                              ),
                            ),
                          ),
                        ],
                      )),
                 SizedBox(height: 10,),
                  Container(
                      padding: EdgeInsets.only(
                          left: 10, top: 10, bottom: 10, right: 10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            padding:
                            EdgeInsets.only(left: 10, top: 10, bottom: 10),
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
                              ],
                            ),
                            child: BigText(
                              text:'ধারণার বিবরণ'.tr,
                              size: ConstantSize.mediumFont,color: AppColors.deepBlue,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),



                          Container(
                            height: 300,
                            child: Column(
                              children: [
                                //BigText(text: "বিস্তারিত বিবরণ",size: ConstantSize.mediumFont),
                                QuillToolbar.basic(controller: _controller),
                                Expanded(
                                  child: Container(
                                    height: 300,
                                    child: QuillEditor.basic(

                                      controller: _controller,
                                      readOnly: false, // true for view only mode
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),

                        ],
                      )),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                            style:ElevatedButton.styleFrom(primary:AppColors.deepBlue ) ,
                          onPressed: () {

                            CreateSchemeModel schemModel=CreateSchemeModel();
                            schemModel.userId=11;
                            schemModel.ideaTitle=controller.titleController.text;
                            schemModel.noOfBfSizeFamily=controller.numberofBeneficiaryFamilies.text;
                            schemModel.noOfBfSizeArea=controller.numberofBeneficiaryVillagesController.text;
                            schemModel.noOfBfSizeIndividuals=controller.totalNumberofBeneficiaries.text??"";
                            schemModel.applicationTo=controller.applicationRcvName.value;
                            schemModel.apAnotherAgency=controller.apAnotherAgency;
                            schemModel.alreadyAgency=controller.alreadyAgencies;
                            schemModel.applicationBody=_controller.plainTextEditingValue.text;

                            controller.postData(schemModel);


                            if (_formKey.currentState?.validate() == true) {
                              print("validate all validation create scheme${_controller.plainTextEditingValue.text}");
                              print(controller.titleController);
                              print(controller.titleController.text);
                              print(controller.upazilla?.value.name);
                              print(controller.union?.value.name);
                              print(controller.description.text);
                              print(controller.streetHouseName.text);

                              print(controller.totalNumberofBeneficiaries.text);
                              print(controller.numberofBeneficiaryFamilies.text);
                              print(controller
                                  .numberofBeneficiaryVillagesController.text);
                              print(controller.dist.value.name);
                             // print(controller.ward.value.name);
                            }





                          },
                          child: BigText(text: "Submit",),
                        ),
                      ),
                    ],
                  ),
                 SizedBox(height: 10,),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }


}
class Constants{
  static List<Districts>? districts;
}