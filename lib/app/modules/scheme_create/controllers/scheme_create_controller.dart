import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../data/api_clients.dart';
import '../../login/model/districts.dart';
import '../normal/applicatin_reciever_model.dart';
import '../normal/category_sector.dart';
import '../normal/create_scheme_model.dart';

class SchemeCreateController extends GetxController { //ApiClient apiClient=ApiClient(appBaseUrl: "http://192.168.50.148:8080");
  ApiClient apiClient=ApiClient(appBaseUrl: "http://139.59.79.118");
  //TODO: Implement SchemeCreateController
  //CommonController obj = Get.put(CommonController());
 // SchemeCreateProvider _SchemeCreateProvider =SchemeCreateProvider();
  RxList<ApplicationReciever>? applicationRecieverList=<ApplicationReciever>[].obs;
  RxInt applicationRcvName=0.obs;
  final titleController = TextEditingController();
  String? selectedCategory;
  final numberofBeneficiaryVillagesController = TextEditingController();
  final numberofBeneficiaryFamilies =TextEditingController();
  final totalNumberofBeneficiaries =TextEditingController();
  String? selectedWard;
  String? apAnotherAgency;
  String? alreadyAgencies;
  List<String>? agencyNameList;
  String? applicationBody="";
  final abedonGrohonKari=TextEditingController();
  final alreadySchemeOrgList=TextEditingController();
  final ledgerHoldingNoandSpotNumber=TextEditingController();


  RxList<Sector> category=<Sector>[].obs;
  final streetHouseName =TextEditingController();
  final description =TextEditingController();
  var schemeCreate;

  RxList<Upazilla>? upazillas = <Upazilla>[].obs;
  Rx<Upazilla>? upazilla =Upazilla().obs;

  RxList<Union>? unions = <Union>[].obs;
  Rx<Union>? union = Union().obs;
  Rx<Districts> dist =Districts().obs;
  //Rx<Data> ward =Data().obs;




  @override
  void onInit() {

    super.onInit();
    getCategory();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void loadApplicationRecieverList(){
    applicationRecieverList?.value.add(ApplicationReciever(1,"CHTDB", "পার্বত্য চট্টগ্রাম উন্নয়ন বোর্ড"));
    applicationRecieverList?.value.add(ApplicationReciever(2,"HDC", "পার্বত্য জেলা পরিষদ"));
    applicationRecieverList?.value.add(ApplicationReciever(3,"Regional Council", "পার্বত্য চট্টগ্রাম আঞ্চলিক পরিষদ"));
  }

  getCategory() async {

    Response response=await apiClient.getData("/lm-mochta-api-gateway/public/api/v1/schemes/category");
    if (response.statusCode == 200) {
      print("category District");
      print(response.body.toString());
      category.value = await Category.fromJson(response.body)
          .data!
          .toList(growable: true);

      print("----------category length==>${category.length}");
      update();
    } else {
      print("--------------category Failed");
    }


  }
  // void getSchemeCreate(){
  //   _SchemeCreateProvider.getSchemeCreate().then((response){
  //     //print(RxStatus.success().toString());
  //     schemeCreate.value=response;
  //   },
  //       onError: (err){
  //         print(err.toString());
  //       });
  // }


  postData(CreateSchemeModel schemeModel) async {

    Response response=await apiClient.postData("/lm-mochta-api-gateway/public/api/v1/schemes/applications",schemeModel.toJson());
    if (response.statusCode == 201) {
      print("Data------->>Successfully posted");
      print(schemeModel.toJson().toString());
      Get.snackbar("Success", "Data saved successfully");

      update();
    } else {
      print("--------------post  Failed");
      print(schemeModel.toJson().toString());
      print(response.statusCode.toString());
      print(response.statusText.toString());
      print(response.bodyString);
    }


  }
}
