import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';

class ColorsUtils {
  static Color typeColor({String type = ''}) {
    switch (type) {
      case 'Fire':
        return const Color.fromRGBO(231, 92, 77, 1);
      case 'Toxic':
        return const Color.fromRGBO(91, 86, 91, 1);
      case 'Melee':
        return const Color.fromRGBO(250, 147, 95, 1);
      case 'Nature':
        return const Color.fromRGBO(172, 221, 119, 1);
      case 'Water':
        return const Color.fromRGBO(69, 202, 255, 1);
      case 'Electric':
        return const Color.fromRGBO(255, 225, 115, 1);
      case 'Mental':
        return const Color.fromRGBO(195, 105, 162, 1);
      case 'Earth':
        return const Color.fromRGBO(185, 120, 91, 1);
      case 'Wind':
        return const Color.fromRGBO(6, 251, 176, 1);
      case 'Crystal':
        return const Color.fromRGBO(233, 74, 102, 1);
      case 'Digital':
        return const Color.fromRGBO(163, 191, 192, 1);
      case 'Neutral':
        return const Color.fromRGBO(229, 246, 247, 1);
    }
    return const Color.fromRGBO(73, 50, 78, 1);
  }

  static Color textColorOverType({String type = ''}) {
    switch (type) {
      case 'Fire':
        return Colors.black;
      case 'Toxic':
        return Colors.white;
      case 'Melee':
        return Colors.black;
      case 'Nature':
        return Colors.black;
      case 'Water':
        return Colors.black;
      case 'Electric':
        return Colors.black;
      case 'Mental':
        return Colors.black;
      case 'Earth':
        return Colors.black;
      case 'Wind':
        return Colors.black;
      case 'Crystal':
        return Colors.black;
      case 'Digital':
        return Colors.black;
      case 'Neutral':
        return Colors.black;
    }
    return Colors.black;
  }

  static Color statsBar(stat, opacity) {
    switch (stat) {
      case 'HP':
        return Color.fromRGBO(255, 89, 89, opacity);
      case 'STA':
        return Color.fromRGBO(32, 208, 210, opacity);
      case 'ATK':
        return Color.fromRGBO(245, 172, 120, opacity);
      case 'DEF':
        return Color.fromRGBO(250, 224, 120, opacity);
      case 'SPATK':
        return Color.fromRGBO(157, 183, 245, opacity);
      case 'SPDEF':
        return Color.fromRGBO(167, 219, 141, opacity);
      case 'SPD':
        return Color.fromRGBO(250, 146, 178, opacity);
    }

    return const Color.fromRGBO(74, 74, 74, 1);
  }

  static Color typeMatchup(modifier) {
    switch (modifier) {
      case '25':
        return const Color.fromRGBO(231, 111, 81, 1);
      case '50':
        return  const Color.fromRGBO(244, 162, 97, 1);
      case '200':
        return  const Color.fromRGBO(233, 196, 106, 1);
      case '400':
        return  const Color.fromRGBO(42, 157, 143, 1);
    }

    return const Color.fromRGBO(74, 74, 74, 1);
  }

  static Color harmonize(Color color) {
    Color harmonized = color.harmonizeWith(typeColor(type: 'Earth'));

    return harmonized;
  }
}
