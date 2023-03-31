import 'package:get/get.dart';

import '../controllers/teams_page_controller.dart';

class TeamsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TeamsPageController>(
      () => TeamsPageController(),
    );
  }
}
