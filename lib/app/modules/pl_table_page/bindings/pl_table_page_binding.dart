import 'package:get/get.dart';

import '../controllers/pl_table_page_controller.dart';

class PlTablePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlTablePageController>(
      () => PlTablePageController(),
    );
  }
}
