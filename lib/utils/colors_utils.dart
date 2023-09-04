import 'dart:ui';

import 'package:flutter/material.dart';

class ColorsUtils {
  static Color typeColor(type) {
    switch (type) {
      case 'bug':
        return const Color.fromRGBO(168, 184, 32, 1);
      case 'dark':
        return const Color.fromRGBO(112, 88, 72, 1);
      case 'dragon':
        return const Color.fromRGBO(112, 56, 248, 1);
      case 'electric':
        return const Color.fromRGBO(248, 208, 48, 1);
      case 'fairy':
        return const Color.fromRGBO(238, 153, 172, 1);
      case 'fire':
        return const Color.fromRGBO(240, 128, 48, 1);
      case 'fighting':
        return const Color.fromRGBO(192, 48, 40, 1);
      case 'flying':
        return const Color.fromRGBO(168, 144, 240, 1);
      case 'ghost':
        return const Color.fromRGBO(112, 88, 152, 1);
      case 'grass':
        return const Color.fromRGBO(120, 200, 80, 1);
      case 'ground':
        return const Color.fromRGBO(224, 192, 104, 1);
      case 'ice':
        return const Color.fromRGBO(152, 216, 216, 1);
      case 'normal':
        return const Color.fromRGBO(168, 168, 120, 1);
      case 'poison':
        return const Color.fromRGBO(160, 64, 160, 1);
      case 'psychic':
        return const Color.fromRGBO(248, 88, 136, 1);
      case 'rock':
        return const Color.fromRGBO(184, 160, 56, 1);
      case 'steel':
        return const Color.fromRGBO(184, 184, 208, 1);
      case 'water':
        return const Color.fromRGBO(104, 144, 240, 1);
    }
    return const Color.fromRGBO(0, 0, 0, 1);
  }

  static Color pokemonColor(color) {
    switch (color) {
      case 'red':
        return const Color.fromRGBO(236, 132, 132, 1);
      case 'blue':
        return const Color.fromRGBO(148, 219, 238, 1);
      case 'yellow':
        return const Color.fromRGBO(255, 255, 153, 1);
      case 'green':
        return const Color.fromRGBO(100, 211, 100, 1);
      case 'black':
        return const Color.fromRGBO(187, 187, 187, 1);
      case 'brown':
        return const Color.fromRGBO(204, 153, 102, 1);
      case 'purple':
        return const Color.fromRGBO(193, 131, 193, 1);
      case 'gray':
        return const Color.fromRGBO(209, 209, 224, 1);
      case 'white':
        return const Color.fromRGBO(255, 255, 255, 1);
      case 'pink':
        return const Color.fromRGBO(244, 189, 201, 1);
    }

    return const Color.fromRGBO(74, 74, 74, 1);
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

    return const Color.fromRGBO(74, 74, 74, 1);
  }
}
