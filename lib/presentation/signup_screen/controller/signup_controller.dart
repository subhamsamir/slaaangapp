import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';

class SignupController extends GetxController {
  TextEditingController emailInputController = TextEditingController();

  TextEditingController usernameInputController = TextEditingController();

  TextEditingController passwordInputController = TextEditingController();

  TextEditingController confirmpasswordOneController = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailInputController.dispose();
    usernameInputController.dispose();
    passwordInputController.dispose();
    confirmpasswordOneController.dispose();
  }
}
