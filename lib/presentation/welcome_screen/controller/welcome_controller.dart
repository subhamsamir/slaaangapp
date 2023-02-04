import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/presentation/welcome_screen/models/welcome_model.dart';

class WelcomeController extends GetxController {
  Rx<WelcomeModel> welcomeModelObj = WelcomeModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.loginScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
