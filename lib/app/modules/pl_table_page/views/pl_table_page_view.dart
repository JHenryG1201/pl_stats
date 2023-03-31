import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pl_stats/app/models/team_model.dart';
import 'package:pl_stats/app/modules/home/controllers/home_controller.dart';

import '../controllers/pl_table_page_controller.dart';

class PlTablePageView extends GetView<PlTablePageController> {
  const PlTablePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List teams = List.from(Get.put(HomeController()).teams);
    teams.sort(
      (a, b) => int.parse(a.rank).compareTo(int.parse(b.rank)),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('2022/2023 Premier League'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Table(
            columnWidths: const <int, TableColumnWidth>{
              0: FixedColumnWidth(3),
              1: FlexColumnWidth(),
              2: IntrinsicColumnWidth(),
              3: FixedColumnWidth(8),
              4: FlexColumnWidth(),
              5: FlexColumnWidth(),
              6: FlexColumnWidth(),
              7: FlexColumnWidth(),
              8: FlexColumnWidth(),
              9: FlexColumnWidth(),
              10: FixedColumnWidth(3),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: <TableRow>[
              const TableRow(
                children: [
                  SizedBox(
                    width: 3,
                  ),
                  Text(''),
                  Text(
                    'Team',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'PL',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'W',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'D',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'L',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'GD',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'PTS',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                ],
              ),
              for (Team team in teams)
                TableRow(
                  children: [
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      team.rank,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      team.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      team.playedMatch,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      team.win,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      team.draw,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      team.lose,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      team.goalDifference,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      team.points,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                  ],
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('PL - Played'),
                  Text('W - Win'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('D - Draw'),
                  Text('L - Lose'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('GD - Goal Difference'),
                  Text('PTS - Points'),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
