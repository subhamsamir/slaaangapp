import '../controller/received_messsages_controller.dart';
import 'package:get/get.dart';

class ReceivedMesssagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReceivedMesssagesController());
  }
}
