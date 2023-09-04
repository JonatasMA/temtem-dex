import 'package:flutter/material.dart';
import 'package:temtem_dex/widgets/modifyer_text.dart';
import 'package:temtem_dex/widgets/types.dart';
import '../helpers/state.dart';
import 'dart:convert';

class WeaknessesList extends StatelessWidget {
  List list;
  WeaknessesList(this.list, {super.key});
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> weak =
        jsonDecode(jsonEncode(temtemWeaknesses[list[0]]));

    List<Widget> quadruple = [ModifyerText('4')];
    List<Widget> duplicate = [ModifyerText('2')];
    List<Widget> half = [ModifyerText('½')];
    List<Widget> quarter = [ModifyerText('¼')];
    if (list.length > 1) {
      weak.forEach((key, value) {
        weak[key] =
            value.toDouble() * temtemWeaknesses[list[1]][key].toDouble();
      });
    }

    weak.forEach((key, value) {
      value = value.toDouble();
      switch (value.toString()) {
        case '4.0':
          quadruple.add(Types(key));
        case '2.0':
          duplicate.add(Types(key));
        case '0.5':
          half.add(Types(key));
        case '0.25':
          quarter.add(Types(key));
      }
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (quarter.length > 1)
          Container(
            color: Colors.red,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: quarter,
                )),
          ),
        if (half.length > 1)
          Container(
            color: Colors.orange,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: half,
                )),
          ),
        if (duplicate.length > 1)
          Container(
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: quadruple.length == 1
                    ? const BorderRadius.vertical(bottom: Radius.circular(12))
                    : null),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: duplicate,
                )),
          ),
        if (quadruple.length > 1)
          Container(
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(12))),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: quadruple,
                )),
          ),
      ],
    );
  }
}
