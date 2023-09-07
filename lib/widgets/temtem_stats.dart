import 'package:flutter/cupertino.dart';
import 'package:temtem_dex/models/temtem.dart';
import 'package:temtem_dex/widgets/status_bar.dart';

class TemTemStats extends StatelessWidget {
  Stats stats;

  TemTemStats(this.stats);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          StatusBar(stats.hp, 'HP'),
          StatusBar(stats.sta, 'STA'),
          StatusBar(stats.spd, 'SPD'),
          StatusBar(stats.atk, 'ATK'),
          StatusBar(stats.def, 'DEF'),
          StatusBar(stats.spatk, 'SPATK'),
          StatusBar(stats.spdef, 'SPDEF'),
        ],
      ),
    );
  }
}
