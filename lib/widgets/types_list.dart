import 'package:flutter/material.dart';
import 'package:temtem_dex/widgets/types.dart';

class TypesList extends StatelessWidget {
  List list;
  TypesList(this.list, {super.key});
  @override
  Widget build(BuildContext context) {
    List<Widget> types = [];
    for (var i = 0; i < list.length; i++) {
      types.add(Types(list[i]));
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: types,
    );
  }
}
