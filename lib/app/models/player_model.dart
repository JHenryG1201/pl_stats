import 'package:pl_stats/app/helpers/globals.dart';
import 'package:pl_stats/app/helpers/util.dart';

class Player {
  int id;
  String name;
  String fullName;
  int totalGoal;
  int totalAssist;
  int team;
  int yellowCardCount;
  int redCardCount;
  Position position;

  Player({
    required this.id,
    required this.name,
    required this.fullName,
    required this.totalGoal,
    required this.totalAssist,
    required this.team,
    required this.yellowCardCount,
    required this.redCardCount,
    required this.position,
  });

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
        id: json['code'],
        name: json['web_name'],
        fullName: json['first_name'] + ' ' + json['second_name'],
        totalGoal: json['goals_scored'],
        totalAssist: json['assists'],
        team: json['team_code'],
        yellowCardCount: json['yellow_cards'],
        redCardCount: json['red_cards'],
        position: Util.choosePosition(json['element_type']));
  }
}
