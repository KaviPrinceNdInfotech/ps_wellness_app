import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginpasswordController extends GetxController {
  final GlobalKey<FormState> loginpasswordformkey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordController;

  var email = '';
  var password = '';

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  String? validEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "              Email is not valid";
    }
    return null;
  }

  String? validPassword(String value) {
    if (value.isEmpty) {
      return '              This field is required';
    }
    if (value.length < 8) {
      return '              Password should have atleast 8 characters';
    }
    if (!RegExp(r'[A-Z0-9a-z]*').hasMatch(value)) {
      return '              Enter a stronger password';
    }
    return null;
  }

  void checkLoginpassword() {
    final isValid = loginpasswordformkey.currentState!.validate();
    if (!isValid) {
      return;
    }
    loginpasswordformkey.currentState!.save();
    //Get.to(() => HomePage());
  }
}
