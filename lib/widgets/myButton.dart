import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll(5),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          textStyle: const MaterialStatePropertyAll(
            TextStyle(fontSize: 25),
          ),
        ),
        onPressed: onTap,
        child: Text(text),
      ),
    );
  }
}
