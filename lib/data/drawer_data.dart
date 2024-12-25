import 'package:chat_application/auth/auth_services.dart';
import 'package:chat_application/views/login_view.dart';
import 'package:chat_application/views/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerData {
  final AuthServices _authServices = Get.put(AuthServices());
  List<String> iconName = [
    'H o m e',
    'S e t t i n g s',
    'L o g o u t',
  ];

  List<IconData> iconLogo = [
    Icons.home,
    Icons.settings,
    Icons.logout,
  ];

  late List<void Function()> onTap;

  DrawerData() {
    onTap = [
      () => Get.back(),
      () => Get.to(() => SettingView()),
      () {
        _authServices.signOut();
        Get.offAll(() => LoginView());
      },
    ];
  }
}
