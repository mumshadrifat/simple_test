import 'package:get/get.dart';
import 'package:simple_test/app/modules/login/controllers/login_controller.dart';

import '../../../data/api_clients.dart';
import '../../scheme/controllers/scheme_controller.dart';
import '../model/schem_detailed_view.dart';

class SchemeDetailedViewController extends GetxController {
  //TODO: Implement SchemeViewController
  // ApiClient apiClient=ApiClient(appBaseUrl: "http://192.168.50.148:8080");
  ApiClient apiClient=ApiClient(appBaseUrl: "http://139.59.79.118");

  SchemeD schemeView =SchemeD();

  LoginController loginController=Get.put(LoginController());
  SchemeController schemeController=Get.put(SchemeController());
  RxString districtName=''.obs;
  RxString upazillaName=''.obs;
  RxString unionName=''.obs;

  @override
  void onInit() {

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}


  Future<void> getSchemeView() async {
    Response response=await apiClient.getData("/lm-mochta-api-gateway/public/api/v1/schemes/applications/15");
    if (response.statusCode == 200) {
      print(" Detailed Scheme ");
      print(response.body.toString());
      schemeView = (await SchemDetailedView.fromJson(response.body).data)!;

      update();
      print(schemeView.id);
      setDisUpaUnionName();
      update();
    } else {
      print("-------------- Failed");
    }

  }
  void setDisUpaUnionName(){
    print("setDisrtct and upazila and union name");
   // mainLayoutController.getAllUpazila();


    for(int i=0;i<loginController.districtsList.value.length;i++){
      if(loginController.districtsList[i]?.id==schemeView.district){
        districtName.value=loginController.districtsList[i]!.name!;


        print("district Name----- $districtName");
      }
    }
    for(int i=0;i<loginController.upazilaList.length;i++){


      if(loginController.upazilaList[i]?.id==schemeView.upazila){
        upazillaName.value=loginController.upazilaList[i]!.name!;


        print("Upazila Name $upazillaName");
      }

    }
    for(int i=0;i<loginController.unionList.length;i++){

      if(loginController.unionList[i]?.id==schemeView.union){
        unionName.value=loginController.unionList[i]!.name!;


        print("Union Name $unionName");
      }

    }
  }

}
