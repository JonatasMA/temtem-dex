import 'package:flutter/material.dart';

class ModifyerText extends StatelessWidget {
  String text;
  ModifyerText(this.text, {super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 5,
              fontWeight: FontWeight.bold,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 4
                ..color = Colors.black,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              letterSpacing: 5,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
