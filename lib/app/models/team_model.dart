class Team {
  int id;
  String name;
  String shortName;
  String playedMatch = '0';
  String rank = '0';
  String win = '0';
  String draw = '0';
  String lose = '0';
  String goalDifference = '0';
  String points = '0';

  Team({
    required this.id,
    required this.name,
    required this.shortName,
  });

  factory Team.fromJSON(Map<String, dynamic> json) {
    return Team(
        id: json['code'], name: json['name'], shortName: json['short_name']);
  }

  void update(String rank, String playedMatch, String win, String draw,
      String lose, String goalDifference, String points) {
    this.rank = rank;
    this.playedMatch = playedMatch;
    this.win = win;
    this.draw = draw;
    this.lose = lose;
    this.goalDifference = goalDifference;
    this.points = points;
  }
}
