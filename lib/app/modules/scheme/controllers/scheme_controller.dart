import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:simple_test/app/modules/login/model/districts.dart';
import 'package:simple_test/app/modules/login/model/ward.dart';
import 'package:simple_test/app/modules/scheme/model/scheme_list_response.dart';

import '../../../data/api_clients.dart';
import '../../login/controllers/login_controller.dart';
import '../model/filter_model.dart';

class SchemeController extends GetxController {
  //SchemeProvider _schemeProvider = SchemeProvider();

  // var schemeAll = <Data>[].obs;
  LoginController loginController = Get.put(LoginController());
  RxList<Districts?> districtList = <Districts>[].obs;
  RxList<Upazilla?> upazilaList = <Upazilla>[].obs;
  RxList<Union?> unionList = <Union>[].obs;
  RxList<Ward_model?> wardList=<Ward_model>[].obs;

  var schemeAll = <DataScheme>[].obs;
  var page = 1.obs;
  final ScrollController controller = ScrollController();

  RxInt selectId = 0.obs;
  ApiClient apiClient = ApiClient(appBaseUrl: "http://139.59.79.118");

  //local
  // ApiClient apiClient=ApiClient(appBaseUrl: "http://192.168.50.148:8080");

  var displayList = <dynamic>[].obs;

  //Filter data TabBar view
  RxList<DataScheme> completed = <DataScheme>[].obs;
  RxList<DataScheme> inProgress = <DataScheme>[].obs;
  RxList<DataScheme> submitted = <DataScheme>[].obs;
  RxList<DataScheme> approved = <DataScheme>[].obs;

  addItems() async {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.position.pixels) {
        page++;
        getSchemeAll();
      }
    });
  }

  @override
  void onInit() {
    page.value = 1;
    addItems();
    super.onInit();
    districtList=loginController.districtsList;
    upazilaList=loginController.upazilaList;
    unionList=loginController.unionList;


    //EasyLoading.show();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    // EasyLoading.dismiss();
  }

  // void getSchemeAll() {
  //   print("schemAll caling");
  //   _schemeProvider.getSchemeAll(userId: "all", page: page).then((response) {
  //     if(page == 1){
  //       schemeAll.assignAll(response.data!);
  //       displayList.value=schemeAll;
  //     }else{
  //       schemeAll.assignAll(schemeAll.value+response.data!);
  //       displayList.value=schemeAll;
  //     }
  //
  //     print(schemeAll.value.length);
  //
  //   }, onError: (err) {
  //     print(err.toString());
  //   });
  // }
  Future<void> getSchemeAll() async {
    Response response = await apiClient.getData(
        "/lm-mochta-api-gateway/public/api/v1/schemes/applications?per_page=40&page=1&user_id=all");
    print("-----All Schemes");
    if (response.statusCode == 200) {
      print("-----All Schemes");
      print(response.body.toString());
      schemeAll?.value = await FilterModel
          .fromJson(response.body)
          .data!
          .toList(growable: true);


      print("----------schemeAll==>${schemeAll.length}");

      displayList.value = schemeAll;
      print("----------schemeAll==>${displayList.length}");
      update();
    } else {
      print("-------------schemeAll Failed");
    }
  }

  getCompletedScheme(int userId, int pageId, int statusId) async {
    Response response = await apiClient.getData(
        "/lm-mochta-api-gateway/public/api/v1/schemes/applications?page=1&user_id=107");
    if (response.statusCode == 200) {
      print("Completed Scheme");
      print(response.body.toString());
      completed.value = await FilterModel
          .fromJson(response.body)
          .data!
          .toList(growable: true);
      displayList.value = [];
      displayList.value = completed.value;

      print("----------completed Schemes length==>${completed.length}");
      print("----------displayList Schemes length==>${displayList.length}");
      update();
    } else {
      print("--------------completed scheme Failed");
    }
  }

  getinProgressScheme(int userId, int pageId, int statusId) async {
    Response response = await apiClient.getData(
        "/lm-mochta-api-gateway/public/api/v1/schemes/applications?page=1&user_id=107&status_id=14");
    if (response.statusCode == 200) {
      print("progress");
      print(response.body.toString());
      inProgress.value = await FilterModel
          .fromJson(response.body)
          .data!
          .toList(growable: true);
      displayList.value = [];
      displayList.value = inProgress.value;
      print("----------progress length==>${completed.length}");
      update();
    } else {
      print("--------------progress Failed");
    }
  }

  getSubmittedScheme(int userId, int pageId, int statusId) async {
    Response response = await apiClient.getData(
        "/lm-mochta-api-gateway/public/api/v1/schemes/applications?page=1&user_id=107&status_id=2");
    if (response.statusCode == 200) {
      print("submit ");
      print(response.body.toString());
      submitted.value = await FilterModel
          .fromJson(response.body)
          .data!
          .toList(growable: true);
      displayList.value = [];
      displayList.value = submitted.value;
      print("----------submit length==>${completed.length}");
      update();
    } else {
      print("--------------submit Failed");
    }
  }

  getApprovedScheme(int userId, int pageId, int statusId) async {
    Response response = await apiClient.getData(
        "/lm-mochta-api-gateway/public/api/v1/schemes/applications?page=1&user_id=107&status_id=18");
    if (response.statusCode == 200) {
      print("draft");
      print(response.body.toString());
      approved.value = await FilterModel
          .fromJson(response.body)
          .data!
          .toList(growable: true);
      displayList.value = [];
      displayList.value = approved.value;

      print("----------draft length==>${completed.length}");
      update();
    } else {
      print("--------------draft Failed");
    }
  }


}



