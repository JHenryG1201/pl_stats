import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pl_stats/app/helpers/util.dart';
import 'package:pl_stats/app/models/team_model.dart';
import 'package:pl_stats/app/routes/app_pages.dart';

class TeamCard extends StatelessWidget {
  const TeamCard({super.key, required this.team});

  final Team team;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.TEAM_DETAILS_PAGE, arguments: [team]),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 70,
              height: MediaQuery.of(context).size.width / 2 - 70,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                  Util.getTeamLogoUrl(team.id),
                ),
              ),
            ),
            Text(
              team.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
