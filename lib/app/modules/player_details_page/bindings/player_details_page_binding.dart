import 'package:get/get.dart';

import '../controllers/player_details_page_controller.dart';

class PlayerDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlayerDetailsPageController>(
      () => PlayerDetailsPageController(),
    );
  }
}
