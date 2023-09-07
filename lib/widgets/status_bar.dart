import 'package:flutter/material.dart';
import 'package:temtem_dex/utils/colors_utils.dart';

class StatusBar extends StatelessWidget {
  int statsValue;
  String statsName;
  StatusBar(this.statsValue, this.statsName, {super.key});

  double _width() {
    return ((125 * statsValue) / 125) + 30;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            statsName,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800),
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: ColorsUtils.statsBar(statsName, 0.5),
                ),
                width: 270,
                child: const Text(
                  ' ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: ColorsUtils.statsBar(statsName, 1.0),
                ),
                width: _width(),
                child: const Text(
                  ' ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 6),
                child: Text(
                  statsValue.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
