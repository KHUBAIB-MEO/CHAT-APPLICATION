import 'package:chat_application/auth/auth_services.dart';
import 'package:chat_application/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  final AuthServices _authServices = Get.put(AuthServices());

  void signUpFunction(
      {required String email,
      required String pass,
      required String confirmPass,
      required BuildContext context}) {
    if (email.isEmpty || pass.isEmpty || confirmPass.isEmpty) {
      //check if email and password is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content:
                Text('Email, password and confirm password cannot be empty')),
      );
    } //check password match
    else {
      if (!RegExp(r"^[^@\s]+@[^@\s]+\.[^@\s]+$").hasMatch(email)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please enter a valid email address')),
        );
      } else {
        if (pass == confirmPass) {
          //sign up user function
          _authServices.signUp(email: email, pass: pass, context: context);
        } else {
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Password does not match')),
          );
        }
      }
    }
  }

  void navigateToLogin() {
    Get.off(() => LoginView());
  }
}
