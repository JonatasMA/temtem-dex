import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CardList extends StatelessWidget {
  List list;
  CardList(this.list, {super.key});
  @override
  Widget build(BuildContext context) {
    List<Widget> types = [];
    Map<String, String> urlTypes = {
      "Neutral":
          "https://temtem.wiki.gg/images/thumb/b/b3/Neutral.png/64px-Neutral.png",
      "Wind": "https://temtem.wiki.gg/images/thumb/b/bf/Wind.png/64px-Wind.png",
      "Earth":
          "https://temtem.wiki.gg/images/thumb/1/1e/Earth.png/64px-Earth.png",
      "Water":
          "https://temtem.wiki.gg/images/thumb/9/9d/Water.png/64px-Water.png",
      "Fire": "https://temtem.wiki.gg/images/thumb/3/30/Fire.png/64px-Fire.png",
      "Nature":
          "https://temtem.wiki.gg/images/thumb/a/a7/Nature.png/64px-Nature.png",
      "Electric":
          "https://temtem.wiki.gg/images/thumb/2/2f/Electric.png/64px-Electric.png",
      "Mental":
          "https://temtem.wiki.gg/images/thumb/b/bf/Mental.png/64px-Mental.png",
      "Digital":
          "https://temtem.wiki.gg/images/thumb/1/1b/Digital.png/64px-Digital.png",
      "Melee":
          "https://temtem.wiki.gg/images/thumb/8/8f/Melee.png/64px-Melee.png",
      "Crystal":
          "https://temtem.wiki.gg/images/thumb/3/31/Crystal.png/64px-Crystal.png",
      "Toxic":
          "https://temtem.wiki.gg/images/thumb/9/96/Toxic.png/64px-Toxic.png",
    };
    for (var i = 0; i < list.length; i++) {
      types.add(CachedNetworkImage(
        imageUrl: urlTypes[list[i]] ?? '',
        width: 30,
        height: 30,
      )
          // Image.network(urlTypes[list[i]] ?? '')
          );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: types,
    );
  }
}
