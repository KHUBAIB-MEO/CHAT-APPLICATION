import 'package:flutter/material.dart';

class InputTextfeild extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const InputTextfeild(
      {super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 17,
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.tertiary,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary, width: 2),
          ),
        ),
      ),
    );
  }
}
