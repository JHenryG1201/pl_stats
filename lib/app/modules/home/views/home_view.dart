import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pl_stats/app/helpers/globals.dart';
import 'package:pl_stats/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PL Stats'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: const Image(
                image: AssetImage(premierLeagueLogoPath),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.TEAMS_PAGE);
              },
              child: const Text(
                'Teams',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.PLAYERS_PAGE);
              },
              child: const Text(
                'Players',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.PL_TABLE_PAGE);
              },
              child: const Text(
                'Table',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
