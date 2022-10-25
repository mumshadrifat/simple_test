import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';
import '../../../utils/custom_text.dart';
import '../../../utils/dimens.dart';
import '../../scheme_create/normal/applicatin_reciever_model.dart';
import '../controllers/feedback_create_controller.dart';

class FeedbackCreateView extends GetView<FeedbackCreateController> {
  QuillController _controller = QuillController.basic();


  @override
  Widget build(BuildContext context) {
    controller.loadApplicationRecieverList();
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
           Get.toNamed(Routes.COMPLAIN);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.black,
            ),
          ),
          title: Row(
            children: [
              BigText(
                  text: 'ফিডব্যাক ফর্ম '.tr,
                  fontWeight: FontWeight.bold,
                  size: ConstantSize.largeFont,
                  color: AppColors.deepBlue),
            ],
          )),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color:AppColors.background,),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 10, bottom: 5, top: 10),
                        child: BigText(
                          text: "শিরোনাম",
                          size: ConstantSize.mediumFont,
                          fontWeight: FontWeight.bold,
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        color:Colors.white,
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
                              labelStyle: TextStyle(
                                fontSize: ConstantSize.mediumFont,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 10),
                        child: Obx(() => DropdownButtonFormField(
                              items: controller.servicesList!.value!
                                  .map((Service? category) {
                                return DropdownMenuItem(
                                    value: category,
                                    child: BigText(
                                      text: category!.bnName.toString(),
                                      size: ConstantSize.smallFont,
                                    ));
                              }).toList(),
                              onChanged: (newValue) {
                                newValue as ApplicationReciever;

                                controller.applicationRcvName.value =
                                    newValue.id!;
                              },
                              // value: 1,
                              validator: (value) =>
                                  value == null ? "*field required " : null,
                              hint: BigText(
                                  text: "--সার্ভিস--",
                                  size: ConstantSize.mediumFont),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding:
                        const EdgeInsets.only(left: 10, bottom: 5, top: 10),
                        child: BigText(
                          text: "রেটিং",
                          size: ConstantSize.mediumFont,
                          fontWeight: FontWeight.bold,
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        color:Colors.white,
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
                              hintText: 'রেটিং '.tr,
                              labelStyle: TextStyle(
                                fontSize: ConstantSize.mediumFont,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 10),
                        child: Obx(() => DropdownButtonFormField(
                              items: controller.serviceTypeList?.value!
                                  .map((ServiceType? category) {
                                return DropdownMenuItem(
                                    value: category,
                                    child: BigText(
                                      text: category!.bnName.toString(),
                                      size: ConstantSize.smallFont,
                                    ));
                              }).toList(),
                              onChanged: (newValue) {
                                newValue as ApplicationReciever;

                                controller.applicationRcvName.value =
                                    newValue.id!;
                              },
                              // value: 1,
                              validator: (value) =>
                                  value == null ? "*field required " : null,
                              hint: BigText(
                                  text: "--সার্ভিসের ধরণ--",
                                  size: ConstantSize.mediumFont),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 10),
                        child: Obx(() => DropdownButtonFormField(
                              items: controller.applicationRecieverList?.value!
                                  .map((ApplicationReciever? category) {
                                return DropdownMenuItem(
                                    value: category,
                                    child: BigText(
                                      text: category!.bnName.toString(),
                                      size: ConstantSize.smallFont,
                                    ));
                              }).toList(),
                              onChanged: (newValue) {
                                newValue as ApplicationReciever;

                                controller.applicationRcvName.value =
                                    newValue.id!;
                              },
                              // value: 1,
                              validator: (value) =>
                                  value == null ? "*field required " : null,
                              hint: BigText(
                                  text: "--গ্রহণকারী সংস্থা--",
                                  size: ConstantSize.mediumFont),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding:
                        const EdgeInsets.only(left: 10, bottom: 5, top: 10),
                        child: BigText(
                          text: "বিস্তারিত",
                          size: ConstantSize.mediumFont,
                          fontWeight: FontWeight.bold,
                        )),
                    Container(
                      height: 300,
                      color:Colors.white,
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

                  ])),
        ),
      ),
    );
  }
}
