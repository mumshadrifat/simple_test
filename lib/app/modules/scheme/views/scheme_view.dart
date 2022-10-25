import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:get/get.dart';

import 'package:intl/intl.dart';
import 'package:simple_test/app/modules/login/model/districts.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';
import '../../../utils/custom_text.dart';
import '../../../utils/dimens.dart';
import '../controllers/scheme_controller.dart';

class SchemeView extends GetView<SchemeController> {
  final _fromdateController = TextEditingController();
  final _TodateController = TextEditingController();

  RxBool m = true.obs;

  @override
  Widget build(BuildContext context) {
    //controller.getCategory();
    controller.getSchemeAll();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              // Navigator.pop(context);
              Get.toNamed(Routes.FEEDBACK);
              //Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.black,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BigText(
                text: "স্কিম তালিকা",
                fontWeight: FontWeight.bold,
                size: ConstantSize.largeFont + 3,
                color: AppColors.deepBlue,
              ),
            ],
          )),
      body: SafeArea(
        child: Container(
          color: AppColors.background,
          child: Column(
            children: [
              Obx(
                () => m.value == true
                    ? AnimatedButtonBar(
                        radius: 30.0,
                        padding: const EdgeInsets.all(10),
                        backgroundColor: AppColors.background,
                        foregroundColor: AppColors.deepTeal,
                        elevation: 4,
                        borderColor: AppColors.deepBlue,
                        borderWidth: 2,
                        innerVerticalPadding: 15,
                        curve: Curves.fastOutSlowIn,
                        children: [
                          ButtonBarEntry(
                              onTap: () {
                                print("1st button for completed scheme list");
                                controller.getSchemeAll();

                                //'মোট'সম্পন্ন
                              },
                              child: BigText(
                                text: "মোট",
                                color: Colors.black,
                                size: 14,
                                fontWeight: FontWeight.bold,
                              )
                              // Text(
                              //                         'মোট'.tr.trParams({'value': '(54)'}),
                              //                         style:
                              //                         Get.textTheme.headline6?.apply(color: Colors.white),
                              //                       )

                              ),
                          ButtonBarEntry(
                            onTap: () {
                              controller.getinProgressScheme(1, 1, 2);
                            },
                            child: BigText(
                              text: "চলমান",
                              color: Colors.black,
                              size: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            // Text('চলমান'.tr.trParams({'value': '(54)'}),
                            //     style: Get.textTheme.headline6
                            //         ?.apply(color: Colors.white))
                          ),
                          ButtonBarEntry(
                              onTap: () {
                                controller.getSubmittedScheme(1, 1, 2);
                              },
                              child: BigText(
                                text: "দাখিলকৃত",
                                color: Colors.black,
                                size: 14,
                                fontWeight: FontWeight.bold,
                              )
                              // Text(
                              //   'দাখিলকৃত'.tr.trParams({'value': '(54)'}),
                              //   style:
                              //   Get.textTheme.headline6?.apply(color: Colors.white),
                              // )

                              ),
                          ButtonBarEntry(
                              onTap: () {
                                controller.getApprovedScheme(1, 1, 2);
                              },
                              child: BigText(
                                text: "অনুমোদিত",
                                color: Colors.black,
                                size: 14,
                                fontWeight: FontWeight.bold,
                              )
                              // Text(
                              //   'অনুমোদিত'.tr.trParams({'value': '(54)'}),
                              //   style:
                              //   Get.textTheme.headline6?.apply(color: Colors.white),
                              // )
                              ),
                          ButtonBarEntry(
                              onTap: () {
                                print('4th Item Tapped');
                                controller.getCompletedScheme(1, 1, 2);
                              },
                              child: BigText(
                                text: "সম্পন্ন",
                                color: Colors.black,
                                size: 14,
                                fontWeight: FontWeight.bold,
                              )
                              // Text(
                              //   'সম্পন্ন'.tr.trParams({'value': '(54)'}),
                              //   style:
                              //   Get.textTheme.headline6?.apply(color: Colors.white),
                              // )
                              ),
                        ],
                      )
                    : Container(),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BigText(
                      text: 'স্কিম আবেদনের তালিকা '.tr,
                      fontWeight: FontWeight.bold,
                      size: ConstantSize.largeFont,
                      color: AppColors.deepBlue,
                    ),
                    // SizedBox(width: 110,),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.black26,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: DropdownButtonFormField(
                                iconSize: 26,
                                items: controller.districtList
                                    .map((Districts? sector) {
                                  return DropdownMenuItem(
                                      value: sector,
                                      child: BigText(
                                          text: sector.toString(),
                                          size: ConstantSize.smallFont));
                                }).toList(),
                                onChanged: (var newValue) {
                                  newValue as Districts;

                                  //  controller.ward.value = newValue.toString();
                                },
                                validator: (value) =>
                                    value == null ? "*field required " : null,
                                hint: BigText(
                                    text: "জেলা",
                                    size: ConstantSize.mediumFont,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: DropdownButtonFormField(
                                iconSize: 26,
                                items: controller.upazilaList
                                    .map((Upazilla? sector) {
                                  return DropdownMenuItem(
                                      value: sector,
                                      child: BigText(
                                          text: sector.toString(),
                                          size: ConstantSize.smallFont));
                                }).toList(),
                                onChanged: (var newValue) {
                                  newValue as Upazilla;
                                },
                                validator: (value) =>
                                    value == null ? "*field required " : null,
                                hint: BigText(
                                    text: "উপজেলা",
                                    size: ConstantSize.mediumFont,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: DropdownButtonFormField(
                                iconSize: 26,
                                items:
                                    controller.unionList.map((Union? sector) {
                                  return DropdownMenuItem(
                                      value: sector,
                                      child: BigText(
                                          text: sector.toString(),
                                          size: ConstantSize.smallFont));
                                }).toList(),
                                onChanged: (var newValue) {
                                  newValue as Districts;

                                  //  controller.ward.value = newValue.toString();
                                },
                                validator: (value) =>
                                    value == null ? "*field required " : null,
                                hint: BigText(
                                    text: "জেলা",
                                    size: ConstantSize.mediumFont,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: DropdownButtonFormField(
                                iconSize: 26,
                                items: controller.upazilaList
                                    .map((Upazilla? sector) {
                                  return DropdownMenuItem(
                                      value: sector,
                                      child: BigText(
                                          text: sector.toString(),
                                          size: ConstantSize.smallFont));
                                }).toList(),
                                onChanged: (var newValue) {
                                  newValue as Upazilla;
                                },
                                validator: (value) =>
                                    value == null ? "*field required " : null,
                                hint: BigText(
                                    text: "উপজেলা",
                                    size: ConstantSize.mediumFont,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.deepTeal,
                      ),
                      child: BigText(
                        text: "Search",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        size: ConstantSize.mediumFont,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 3, bottom: 3, right: 10, left: 20),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: TextFormField(
                  // controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please_enter'.trParams({'value': 'email'.tr});
                    } else if (!value.isEmail) {
                      return 'Please_enter_valid'
                          .trParams({'value': 'email'.tr});
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'search'.tr,
                    suffixIcon: Icon(Icons.search, color: AppColors.deepTeal),

                    fillColor: Colors.white,
                    //fillColor: Colors.green
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 10,
              ),
              Obx(
                () => Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      controller: controller.controller,
                      itemCount: controller.displayList.value.length,
                      itemBuilder: (BuildContext context, int index) {
                        var item = controller.displayList.value[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 14, right: 14, bottom: 8, top: 4),
                          child: ClipPath(
                            clipper: ShapeBorderClipper(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                            child: Container(
                              margin: EdgeInsets.only(right: 2),
                              decoration: BoxDecoration(

                                border: Border(
                                  left: BorderSide(
                                      width: 8.0, color: AppColors.deepBlue),
                                  right: BorderSide(
                                      width: 1.0, color: Colors.grey),
                                  top: BorderSide(
                                      width: 1.0, color: Colors.grey),
                                  bottom: BorderSide(
                                      width: 1.0, color: Colors.grey),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Expanded(
                                    child: ListTile(
                                      title: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 4),
                                        child: Text("${item.ideaTitle}",
                                            maxLines: 1,
                                            style: Get.textTheme.headline6
                                                ?.apply(
                                                    color: AppColors.deepBlue)),
                                      ),
                                      subtitle: Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    'ট্র্যাকিং নম্বর : '.tr +
                                                        "${item.trackingNo}",
                                                    style: Get
                                                        .textTheme.bodyText2),
                                                Text(
                                                    'অবস্থা : '.tr +
                                                        "${item.statusId}",
                                                    style:
                                                        Get.textTheme.bodyText2)
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    'জমার তারিখ : '.tr +
                                                        "${item.createdAt.toString().substring(0, 10)}",
                                                    style: Get
                                                        .textTheme.bodyText2),
                                                Text(
                                                    'অর্থবছর : '.tr +
                                                        "${item.fiscalYear}",
                                                    style: Get
                                                        .textTheme.bodyText2),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      onTap: () async {
                                        //  await EasyLoading.show();
                                        //controller.selectedItem = item;
                                        controller.selectId.value = item.id;
                                        print(
                                            "selected id::${controller.selectId.value}");
                                        Get.toNamed(
                                            Routes.SCHEME_DETAILED_VIEW);
                                        // EasyLoading.dismiss();
                                      },
                                      dense: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.deepBlue,
        child: Icon(
          Icons.add,
          size: 24,
          color: Colors.black,
        ),
        onPressed: () async {
          //  await EasyLoading.show();

          Get.toNamed(Routes.SCHEME_CREATE);
          // EasyLoading.dismiss();
          print("pressed it");
        },
      ),
    );
  }
}
