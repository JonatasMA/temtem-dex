import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:temtem_dex/models/screen_arguments.dart';
import 'package:temtem_dex/models/temtem.dart';
import 'package:temtem_dex/screens/info_screen.dart';
import 'package:temtem_dex/widgets/types_list.dart';
import 'package:temtem_dex/widgets/weaknesses_list.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({super.key, required this.temtem});
  final TemTem temtem;

  @override
  State<ItemCard> createState() => _ItemCardState(temtem);
}

class _ItemCardState extends State<ItemCard>
    with SingleTickerProviderStateMixin {
  TemTem temtem;
  _ItemCardState(this.temtem);

  late AnimationController expandController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    _runExpandCheck();
  }

  void prepareAnimations() {
    expandController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    animation = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
  }

  void _runExpandCheck() {
    if (temtem.isExpanded) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void didUpdateWidget(ItemCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck();
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkResponse(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(
                            temtem.portraitWikiUrl),
                        radius: 30),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('#${temtem.number.toString().padLeft(3, '0')}'),
                      Text(temtem.name),
                      TypesList(temtem.types),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          temtem.isExpanded = !temtem.isExpanded;
                          _runExpandCheck();
                        });
                      },
                      icon: Icon(temtem.isExpanded
                          ? Icons.expand_less
                          : Icons.expand_more))
                ],
              ),
            ),
            SizeTransition(
                sizeFactor: animation,
                axisAlignment: 1.0,
                child: WeaknessesList(temtem.types)),
          ],
        ),
        onTap: () {
          Navigator.pushNamed(
            context,
            InfoScreen.routeName,
            arguments: ScreenArguments(temtem),
          );
        },
      ),
    );
  }
}
