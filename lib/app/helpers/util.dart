import 'dart:convert';

import 'package:get/get.dart';
import 'package:pl_stats/app/helpers/globals.dart';
import 'package:pl_stats/app/models/player_model.dart';
import 'package:pl_stats/app/models/team_model.dart';
import 'package:pl_stats/app/modules/home/controllers/home_controller.dart';
import 'package:http/http.dart' as http;

class Util {
  static Position choosePosition(int type) {
    switch (type) {
      case 1:
        return Position.Goalkeeper;
      case 2:
        return Position.Defender;
      case 3:
        return Position.Midfielder;
      case 4:
        return Position.Forward;
      default:
        throw Exception('Unknown position');
    }
  }

  static Future<void> loadData() async {
    final response = await http.get(Uri.parse(apiUrl));
    final controller = Get.put(HomeController());

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData =
          jsonDecode(utf8.decode(response.bodyBytes));
      controller.teams =
          jsonData['teams'].map((team) => Team.fromJSON(team)).toList();
      controller.players = jsonData['elements']
          .map((player) => Player.fromJson(player))
          .toList();
    } else {
      throw Exception('Something went wrong.');
    }
  }

  static loadTable() async {
    final response = await http.get(Uri.parse(tableUrl));

    if (response.statusCode == 200) {
      List tableData = jsonDecode(response.body).sublist(1);

      final controller = Get.put(HomeController());
      for (String team in tableData) {
        List<String> datas = team.split('  ');
        datas = datas.sublist(0, 6) + datas[6].split(' ');
        controller.teams
            .firstWhere((team) => team.name == teamNamePairs[datas[1]])
            .update(datas[0], datas[2], datas[3], datas[4], datas[5], datas[6],
                datas[7]);
      }
    } else {
      throw Exception('Something went wrong.');
    }
  }

  static String getTeamLogoUrl(int teamId) {
    return 'https://resources.premierleague.com/premierleague/badges/50/t$teamId@x2.png';
  }

  static String getPlayerPhotoUrl(int playerId) {
    return 'https://resources.premierleague.com/premierleague/photos/players/110x140/p$playerId.png';
  }
}
