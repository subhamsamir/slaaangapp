import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/presentation/received_messsages_screen/models/received_messsages_model.dart';
import 'package:flutter/material.dart';

class ReceivedMesssagesController extends GetxController {
  TextEditingController searchbarController = TextEditingController();

  Rx<ReceivedMesssagesModel> receivedMesssagesModelObj =
      ReceivedMesssagesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchbarController.dispose();
  }
}
