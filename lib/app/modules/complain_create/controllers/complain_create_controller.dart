import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../scheme_create/normal/applicatin_reciever_model.dart';

class ComplainCreateController extends GetxController {
  //TODO: Implement FeedbackCreateController
  TextEditingController titleController=TextEditingController();
  RxList<ApplicationReciever>? applicationRecieverList=<ApplicationReciever>[].obs;
  RxList<ServiceType>? serviceTypeList=<ServiceType>[].obs;
  RxList<Service>? servicesList=<Service>[].obs;
  RxInt applicationRcvName=0.obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  void loadApplicationRecieverList(){
    applicationRecieverList?.value=[];
    servicesList?.value=[];
    serviceTypeList?.value=[];
    applicationRecieverList?.value.add(ApplicationReciever(1,"CHTDB", "পার্বত্য চট্টগ্রাম উন্নয়ন বোর্ড"));
    applicationRecieverList?.value.add(ApplicationReciever(2,"HDC", "পার্বত্য জেলা পরিষদ"));
    applicationRecieverList?.value.add(ApplicationReciever(3,"Regional Council", "পার্বত্য চট্টগ্রাম আঞ্চলিক পরিষদ"));
    servicesList?.value.add(Service(1,"Service one","Service one"));
    servicesList?.value.add(Service(2,"Service two","Service two"));
    servicesList?.value.add(Service(3,"Service three","Service three"));
    serviceTypeList?.value.add(ServiceType(1,"Scheme Service","Scheme Service"));
    serviceTypeList?.value.add(ServiceType(1,"ScholarShip Service","ScholarShip Service"));
    serviceTypeList?.value.add(ServiceType(1,"Training Service","Training Service"));


  }
}
