import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController enteryouremailController = TextEditingController();

  TextEditingController enteryourpasswordController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    enteryouremailController.dispose();
    enteryourpasswordController.dispose();
  }
}
