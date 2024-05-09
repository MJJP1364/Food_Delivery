import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextLiquidFill(
        text: text,
        boxHeight: 100,
        waveDuration: const Duration(seconds: 4),
        loadDuration: const Duration(seconds: 5),
        waveColor: Colors.blueAccent,
        //  const Color(0xff032030),
        boxBackgroundColor: Theme.of(context).colorScheme.background,
        textStyle: const TextStyle(
            fontSize: 60, fontWeight: FontWeight.bold, color: Colors.amber),
      ),
    );
  }
}
