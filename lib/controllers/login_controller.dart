import 'package:chat_application/auth/auth_services.dart';
import 'package:chat_application/views/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  final AuthServices _authServices = Get.put(AuthServices());

  void loginFunction(
      {required String email,
      required String pass,
      required BuildContext context}) {
    _authServices.login(email, pass, context);
  }

  void navigateToSignUp() {
    Get.off(() => SignUpView());
  }
}
