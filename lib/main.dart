import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pl_stats/app/helpers/theme.dart';
import 'package:pl_stats/app/helpers/util.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await Util.loadData();
  await Util.loadTable();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PL Stats",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: PLTheme.light(),
    ),
  );
}
