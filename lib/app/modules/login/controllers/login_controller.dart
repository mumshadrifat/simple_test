import 'package:get/get.dart';

import 'package:get/get.dart';

import '../../../data/api_clients.dart';
import '../../../routes/app_pages.dart';
import '../model/auth_body.dart';
import '../model/auth_repsonse.dart';
import '../model/districts.dart';

class LoginController extends GetxController {
  ApiClient apiClient=ApiClient(appBaseUrl: "http://139.59.79.118");
  RxList<Districts?> districtsList=<Districts?>[].obs;
  RxList<Upazilla?> upazilaList=<Upazilla?>[].obs;
  RxList<Union?> unionList=<Union?>[].obs;

  User? user=User();
  var isPasswordShow = false.obs;
  RxString? token=''.obs;
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

  Future<void> login(AuthBody authBody) async {
    Response response =await apiClient.postData("/lm-mochta-api-gateway/public/api/v1/auth/login", authBody.toJson());
    if(response.statusCode==200){
      token?.value=response.body["data"]["token"];
      print(response.body["data"]["token"]);
      user= AuthResponse.fromJson(response.body).data?.user;
      print(user?.email);
      getAllDistricts();

      Get.toNamed(Routes.SCHEME);
    }
    else{

      print(response.statusCode);
      print("Login failed");
    }

  }
  void getAllDistricts()async{

    Response response=await apiClient.getData("/lm-mochta-api-gateway/public/api/v1/common/districts");
    if(response.statusCode==200){
      print("loaded disrtricts");
      districtsList.value= DistrictsModel.fromJson(response.body).data!;
    }
    else{
      print("failed to load districts ");
      print( response.statusCode.toString());

    }
    getAllUpazila();
  }
  void getAllUpazila()async{
    // print("loading upazila and union");
    for(int i=0;i<districtsList.value.length;i++){

      for(int j=0;j<districtsList[i]!.upazillas!.length;j++){
        // print("district${districtsList[i]} and upzila ${districtsList[i]!.upazillas![j]}");
        upazilaList.value.add(districtsList[i]!.upazillas![j]);
        for(int k=0;k<districtsList[i]!.upazillas![j].unions!.length;k++){
          unionList.value.add(districtsList[i]!.upazillas![j].unions![k]);
        }
      }


    }

    print("upazila List ${upazilaList.length}");
    print("union List ${unionList.length}");


  }
  void registration(){
     Get.toNamed(Routes.REGISTRATION);
  }
}

