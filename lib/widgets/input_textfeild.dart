import 'package:chat_application/controllers/input_textfeild_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class InputTextfeild extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  InputTextfeild(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.obscureText});

  final InputTextfeildController inputTextfeildController =
      Get.put(InputTextfeildController());
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<InputTextfeildController>(
        builder: (inputTextfeildController) {
      return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: TextField(
          controller: controller,
          obscureText: isObscure,
          obscuringCharacter: '*',
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
            suffixIcon: obscureText == false
                ? null
                : IconButton(
                    onPressed: () {
                      isObscure =
                          inputTextfeildController.toggleObscureText(isObscure);
                    },
                    icon: isObscure
                        ? Icon(
                            Icons.visibility_off,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        : Icon(
                            Icons.remove_red_eye,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                  ),
          ),
        ),
      );
    });
  }
}
