import 'package:get/get.dart';

import '../controllers/players_page_controller.dart';

class PlayersPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlayersPageController>(
      () => PlayersPageController(),
    );
  }
}
