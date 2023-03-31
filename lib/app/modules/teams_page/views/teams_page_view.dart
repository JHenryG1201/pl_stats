import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pl_stats/app/components/team_card.dart';
import 'package:pl_stats/app/modules/home/controllers/home_controller.dart';

import '../controllers/teams_page_controller.dart';

class TeamsPageView extends GetView<TeamsPageController> {
  const TeamsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teams'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: Get.put(HomeController())
            .teams
            .map((team) => TeamCard(team: team))
            .toList(),
      ),
    );
  }
}
