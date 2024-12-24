import 'package:chat_application/firebase_options.dart';
import 'package:chat_application/theme/lightmode.dart';
import 'package:chat_application/views/login_view.dart';
import 'package:chat_application/views/sign_up_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Chat Application",
      debugShowCheckedModeBanner: false,
      home: SignUpView(),
      theme: lightMode,
    );
  }
}
