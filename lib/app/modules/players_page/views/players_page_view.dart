import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pl_stats/app/components/player_card.dart';
import 'package:pl_stats/app/modules/home/controllers/home_controller.dart';

import '../controllers/players_page_controller.dart';

class PlayersPageView extends GetView<PlayersPageController> {
  const PlayersPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Players'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: Get.put(HomeController())
            .players
            .map((player) => PlayerCard(player: player))
            .toList(),
      ),
    );
  }
}
