import 'package:chat_application/controllers/sign_up_controller.dart';
import 'package:chat_application/widgets/input_textfeild.dart';
import 'package:chat_application/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});
  final SignUpController signUpController = Get.put(SignUpController());
  //final AuthServices _authServices = Get.put(AuthServices());

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
                "Sign Up",
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
                controller: signUpController.emailController,
              ),

              const SizedBox(
                height: 20,
              ),

              //password textfeild
              InputTextfeild(
                hintText: "P a s s w o r d",
                controller: signUpController.passController,
              ),

              const SizedBox(
                height: 20,
              ),

              // confirm password textfeild
              InputTextfeild(
                hintText: "C o n f i r m  P a s s w o r d",
                controller: signUpController.confirmPassController,
              ),

              const SizedBox(
                height: 40,
              ),

              // login button
              SubmitButton(
                data: "Sign Up",
                onTap: () {
                  FocusScope.of(context).unfocus();
                  signUpController.signUpFunction(
                      email: signUpController.emailController.text.trim(),
                      pass: signUpController.passController.text.trim(),
                      confirmPass:
                          signUpController.confirmPassController.text.trim(),
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
                    "Already have an account? ",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  GestureDetector(
                    onTap: () => signUpController.navigateToLogin(),
                    child: Text(
                      "Login",
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
