import 'package:flutter/material.dart';
import 'package:temtem_dex/models/temtem.dart';
import 'http/request.dart';
import 'helpers/state.dart';
import 'package:temtem_dex/app.dart';

Future main() async {
  List<dynamic> jsonTemtem = await RequestTemtem.fetchTemtem();
  for (var temtem in jsonTemtem) {
    temtems.add(TemTem.fromJson(temtem));
  }
  runApp(const TemtemDex());
}
