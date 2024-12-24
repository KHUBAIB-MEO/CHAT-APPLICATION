import 'package:chat_application/controllers/login_controller.dart';
import 'package:chat_application/widgets/input_textfeild.dart';
import 'package:chat_application/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(
                Icons.message_outlined,
                size: 70,
                color: Theme.of(context).colorScheme.primary,
              ),

              const SizedBox(
                height: 30,
              ),
              // title
              Text(
                "Login",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),

              const SizedBox(
                height: 20,
              ),
              //email textfeild
              InputTextfeild(
                hintText: "E m a i l",
                controller: loginController.emailController,
                obscureText: false,
              ),

              const SizedBox(
                height: 20,
              ),

              //password textfeild
              InputTextfeild(
                hintText: "P a s s w o r d",
                controller: loginController.passController,
                obscureText: true,
              ),

              const SizedBox(
                height: 40,
              ),

              // login button
              SubmitButton(
                data: "Login",
                onTap: () {
                  FocusScope.of(context).unfocus();
                  loginController.loginFunction(
                      email: loginController.emailController.text.trim(),
                      pass: loginController.passController.text.trim(),
                      context: context);
                },
              ),

              const SizedBox(
                height: 30,
              ),

              // register toggle text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  GestureDetector(
                    onTap: () => loginController.navigateToSignUp(),
                    child: Text(
                      "Register now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 15),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
