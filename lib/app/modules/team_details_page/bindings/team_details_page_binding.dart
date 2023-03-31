import 'package:get/get.dart';

import '../controllers/team_details_page_controller.dart';

class TeamDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TeamDetailsPageController>(
      () => TeamDetailsPageController(),
    );
  }
}
