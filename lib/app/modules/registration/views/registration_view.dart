import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimens.dart';
import '../controllers/registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  final _formKey = GlobalKey<FormState>();
  final _nidController = TextEditingController();
  final _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Space(),
                Center(
                  child: Container(
                    child: Image.asset(
                      'assetes/image/bdlogo1.png',
                      height: 75,
                      width: 75,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Ministry of chittagong'.tr + " " + 'Hill Tracts Affairs'.tr,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: ConstantSize.largeFont),
                  maxLines: 1,
                ),
                Space(),
                Text(
                  'New Registration'.tr,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.deepBlue,
                      fontSize: ConstantSize.mediumFont + 2),
                ),
                Space(),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      border: Border.all(color: Colors.black26)),
                  child: TextFormField(
                    controller: _nidController,
                    validator: (value){
                     if(value==null||value.isEmpty){
                       return "Please give your Nid No".trParams({"value":"NID"});
                     }
                     else{
                       return null;

                     }
                    },
                    decoration: InputDecoration(

                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'NID No / DOB'.tr,
                      prefixIcon: Icon(
                        Icons.credit_card,
                        size: 24,
                        color: AppColors.deepTeal,
                      ),
                      //fillColor: Colors.green
                    ),
                  ),
                ),
                Space(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      border: Border.all(color: Colors.black26)),
                  child: TextFormField(
                      validator: (value){
                        if(value==null||value.isEmpty){
                          return "Please give your Date No".trParams({"value":"Date"});
                        }
                        else{
                          return null;

                        }
                      },
                      controller: _dateController,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: 'Date of Birth'.tr,
                        prefixIcon: IconButton(
                          icon: Image.asset(
                            'assetes/image/Icon awesome-calendar-alt.png',
                            height: 24,
                            width: 30,
                            color: AppColors.deepTeal,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      onTap: () async {
                        DateTime? date = DateTime(1900);
                        FocusScope.of(context).requestFocus(new FocusNode());
                        final f = DateFormat('dd/MM/yyyy');
                        date = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100));

                        _dateController.text = f.format(date!);
                      }),
                ),
                Space(),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() == true) {
                        print("validate");
                      }
                      else{
                        print("not Validate");
                      }
                      controller.nextButtonClick();
                    },
                    style:
                        ElevatedButton.styleFrom(primary: AppColors.deepTeal),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 12),
                      child: Text(
                        'Next'.tr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: ConstantSize.mediumFont),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Space extends StatelessWidget {
  Space({Key? key, this.width, this.height}) : super(key: key);
  double? width;
  double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 20,
      height: height ?? 20,
    );
  }
}
