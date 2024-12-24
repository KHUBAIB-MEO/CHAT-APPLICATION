import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final void Function()? onTap;
  final String data;
  const SubmitButton({super.key, required this.onTap, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 80, right: 80),
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Center(
            child: Text(
              data,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
