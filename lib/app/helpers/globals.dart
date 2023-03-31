enum Position {
  Goalkeeper,
  Defender,
  Midfielder,
  Forward,
}

const String apiUrl = 'https://fantasy.premierleague.com/api/bootstrap-static/';

const String tableUrl = 'https://pl.apir7.repl.co/table';

const String premierLeagueLogoPath = 'assets/pl-logo.png';

const String playerDefaultImage =
    'https://resources.premierleague.com/premierleague/photos/players/110x140/Photo-Missing.png';

const Map<String, String> teamNamePairs = {
  'Arsenal': 'Arsenal',
  'Aston Villa': 'Aston Villa',
  'Bournemouth': 'Bournemouth',
  'Brentford': 'Brentford',
  'Brighton': 'Brighton',
  'Chelsea': 'Chelsea',
  'Crystal Palace': 'Crystal Palace',
  'Everton': 'Everton',
  'Fulham': 'Fulham',
  'Leicester': 'Leicester',
  'Leeds': 'Leeds',
  'Liverpool': 'Liverpool',
  'Manchester City': 'Man City',
  'Manchester United': 'Man Utd',
  'Newcastle United': 'Newcastle',
  'Nottingham Forest': 'Nott\'m Forest',
  'Southampton': 'Southampton',
  'Tottenham': 'Spurs',
  'West Ham': 'West Ham',
  'Wolves': 'Wolves',
};
