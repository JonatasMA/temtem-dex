import 'dart:ui';

import 'package:flutter/material.dart';

class ColorsUtils {
  static Color typeColor(type) {
    switch (type) {
      case 'bug':
        return Color.fromRGBO(168, 184, 32, 1);
      case 'dark':
        return Color.fromRGBO(112, 88, 72, 1);
      case 'dragon':
        return Color.fromRGBO(112, 56, 248, 1);
      case 'electric':
        return Color.fromRGBO(248, 208, 48, 1);
      case 'fairy':
        return Color.fromRGBO(238, 153, 172, 1);
      case 'fire':
        return Color.fromRGBO(240, 128, 48, 1);
      case 'fighting':
        return Color.fromRGBO(192, 48, 40, 1);
      case 'flying':
        return Color.fromRGBO(168, 144, 240, 1);
      case 'ghost':
        return Color.fromRGBO(112, 88, 152, 1);
      case 'grass':
        return Color.fromRGBO(120, 200, 80, 1);
      case 'ground':
        return Color.fromRGBO(224, 192, 104, 1);
      case 'ice':
        return Color.fromRGBO(152, 216, 216, 1);
      case 'normal':
        return Color.fromRGBO(168, 168, 120, 1);
      case 'poison':
        return Color.fromRGBO(160, 64, 160, 1);
      case 'psychic':
        return Color.fromRGBO(248, 88, 136, 1);
      case 'rock':
        return Color.fromRGBO(184, 160, 56, 1);
      case 'steel':
        return Color.fromRGBO(184, 184, 208, 1);
      case 'water':
        return Color.fromRGBO(104, 144, 240, 1);
    }
    return Color.fromRGBO(0, 0, 0, 1);
  }

  static Color pokemonColor(color) {
    switch (color) {
      case 'red':
        return Color.fromRGBO(236, 132, 132, 1);
      case 'blue':
        return Color.fromRGBO(148, 219, 238, 1);
      case 'yellow':
        return Color.fromRGBO(255, 255, 153, 1);
      case 'green':
        return Color.fromRGBO(100, 211, 100, 1);
      case 'black':
        return Color.fromRGBO(187, 187, 187, 1);
      case 'brown':
        return Color.fromRGBO(204, 153, 102, 1);
      case 'purple':
        return Color.fromRGBO(193, 131, 193, 1);
      case 'gray':
        return Color.fromRGBO(209, 209, 224, 1);
      case 'white':
        return Color.fromRGBO(255, 255, 255, 1);
      case 'pink':
        return Color.fromRGBO(244, 189, 201, 1);
    }

    return Color.fromRGBO(74, 74, 74, 1);
  }

  static Color statsBar(stat, opacity) {
    switch (stat) {
      case 'HP':
        return Color.fromRGBO(255, 89, 89, opacity);
      case 'Atk':
        return Color.fromRGBO(245, 172, 120, opacity);
      case 'Def':
        return Color.fromRGBO(250, 224, 120, opacity);
      case 'Sp. Atk':
        return Color.fromRGBO(157, 183, 245, opacity);
      case 'Sp. Def':
        return Color.fromRGBO(167, 219, 141, opacity);
      case 'Spe':
        return Color.fromRGBO(250, 146, 178, opacity);
    }

    return Color.fromRGBO(74, 74, 74, 1);
  }
}
