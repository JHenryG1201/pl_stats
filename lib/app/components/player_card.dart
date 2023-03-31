import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pl_stats/app/helpers/globals.dart';
import 'package:pl_stats/app/helpers/util.dart';
import 'package:pl_stats/app/models/player_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pl_stats/app/routes/app_pages.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({
    super.key,
    required this.player,
  });

  final Player player;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.PLAYER_DETAILS_PAGE, arguments: [player]),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CachedNetworkImage(
              height: 150,
              imageUrl: Util.getPlayerPhotoUrl(player.id),
              imageBuilder: ((context, imageProvider) => SizedBox(
                    child: Image(
                      image: imageProvider,
                    ),
                  )),
              errorWidget: ((context, url, error) => const Image(
                    image: NetworkImage(playerDefaultImage),
                  )),
            ),
            Text(
              player.name,
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
