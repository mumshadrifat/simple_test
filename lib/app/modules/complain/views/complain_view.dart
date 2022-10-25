import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';
import '../../../utils/custom_text.dart';
import '../../../utils/dimens.dart';
import '../controllers/complain_controller.dart';

class ComplainView extends GetView<ComplainController> {
  ComplainView({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
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
                          text: " অভিযোগের তালিকা    ",
                          color: AppColors.deepBlue,
                          size: ConstantSize.largeFont + 3,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                )), preferredSize: Size.fromHeight(70)),
        body:Column(
          children: [
            Expanded(
              child: ListView.builder(

                  itemCount:4 ,
                  itemBuilder: ( context,  index) {

                    return Padding(
                      padding: const EdgeInsets.only(
                          bottom: 8, top: 4),
                      child: ClipPath(
                        clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                  width: 8.0, color: AppColors.deepBlue),
                              right: BorderSide(
                                  width: 1.0, color: Colors.black12),
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
                                  color: AppColors.secondaryColor,
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
                                    child: Text("ক্রমিক নং :"+" $index",
                                        maxLines: 1,
                                        style: Get.textTheme.headline6
                                            ?.apply(
                                            color: AppColors
                                                .deepBlue)),
                                  ),
                                  subtitle: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                                'শিরোনাম : ' +"Hola Amigos",

                                                style: Get
                                                    .textTheme.bodyText2),
                                            Text(
                                                "আবেদন গ্রহণকারী সংস্থা : "+" Unicef",
                                                style: Get
                                                    .textTheme.bodyText2)
                                          ],
                                        ),

                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                                "জমার তারিখ: "+" 18/10/2022",
                                                style: Get
                                                    .textTheme.bodyText2),
                                            Text(
                                                "জমার তারিখ: "+" 18/10/2022",
                                                style: Get
                                                    .textTheme.bodyText2)

                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () async {
                                    //  await EasyLoading.show();
                                    //controller.selectedItem = item;
                                    //  controller.selectId.value=item.id;
                                    //  print("selected id::${controller.selectId.value}");
                                    // Get.toNamed(Routes.SCHEME_DETAILED_VIEW);
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
          ],
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
            Get.toNamed(Routes.COMPLAIN_CREATE);
            // EasyLoading.dismiss();
            print("pressed it");
          },
        )
    ),
  );
}
}
