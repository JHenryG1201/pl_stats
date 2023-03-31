import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/pl_table_page/bindings/pl_table_page_binding.dart';
import '../modules/pl_table_page/views/pl_table_page_view.dart';
import '../modules/player_details_page/bindings/player_details_page_binding.dart';
import '../modules/player_details_page/views/player_details_page_view.dart';
import '../modules/players_page/bindings/players_page_binding.dart';
import '../modules/players_page/views/players_page_view.dart';
import '../modules/team_details_page/bindings/team_details_page_binding.dart';
import '../modules/team_details_page/views/team_details_page_view.dart';
import '../modules/teams_page/bindings/teams_page_binding.dart';
import '../modules/teams_page/views/teams_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TEAMS_PAGE,
      page: () => const TeamsPageView(),
      binding: TeamsPageBinding(),
    ),
    GetPage(
      name: _Paths.PLAYERS_PAGE,
      page: () => const PlayersPageView(),
      binding: PlayersPageBinding(),
    ),
    GetPage(
      name: _Paths.PL_TABLE_PAGE,
      page: () => const PlTablePageView(),
      binding: PlTablePageBinding(),
    ),
    GetPage(
      name: _Paths.TEAM_DETAILS_PAGE,
      page: () => const TeamDetailsPageView(),
      binding: TeamDetailsPageBinding(),
    ),
    GetPage(
      name: _Paths.PLAYER_DETAILS_PAGE,
      page: () => const PlayerDetailsPageView(),
      binding: PlayerDetailsPageBinding(),
    ),
  ];
}
