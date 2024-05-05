import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  const InputText({
    super.key,
    required this.hint,
    required this.controller,
    required this.obsecured,
    required this.lable,
    this.icon,
    this.sufixe,
    this.onTap,
  });
  final String hint;
  final TextEditingController controller;
  final bool? obsecured;
  final String lable;
  final IconData? icon;
  final IconData? sufixe;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Field Is Required';
          }
          return null;
        },
        controller: controller,
        obscureText: obsecured!,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: onTap,
            child: Icon(sufixe),
          ),
          prefix: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(icon),
          ),
          hintText: hint,
          label: Text(lable),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.onSecondary),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.primary),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
