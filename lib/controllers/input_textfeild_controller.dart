import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class InputTextfeildController extends GetxController {
  bool obscureText = false;

  bool toggleObscureText(bool obscureText) {
    obscureText = !obscureText;
    update();
    return obscureText;
  }
}
