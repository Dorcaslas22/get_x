
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  var isEmailValid = true.obs;
  var isPasswordValid = true.obs;
  var isConfirmPasswordValid = true.obs;

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    // validating email is not empty and is correct
    if (email.isEmpty || !email.isEmpty) {
      isEmailValid.value = false;
    } else {
      isEmailValid.value = true;
    }
    // validating password is not empty and has length greater than or equal to
    // 6 characters
    if (password.isEmpty || password.length < 6) {
      isPasswordValid.value = false;
    } else {
      isPasswordValid.value = true;
    }
    // validating email and password and checking static email

    if (isEmailValid.value && isPasswordValid.value && emailController
        .text =="example@gmail.com"){
      emailController.clear();
      passwordController.clear();

      Get.snackbar("Success", "Logged in Successfully!",
      colorText: Colors.white,backgroundColor: Colors.blue);
    }else{
      Get.snackbar("error", "Logged in Failed!",
          colorText: Colors.white,backgroundColor: Colors.red);
    }
  }


  void signup() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String confirmpassword = confirmPasswordController.text.trim();

    // validating email is not empty and is correct
    if (email.isEmpty || !email.isEmpty) {
      isEmailValid.value = false;
    } else {
      isEmailValid.value = true;
    }

    // validating password is not empty and has length greater than or equal to
    // 6 characters
    if (password.isEmpty || password.length < 6) {
      isPasswordValid.value = false;
    } else {
      isPasswordValid.value = true;
    }
    // validating if confirmpassword and password are the same
    if (confirmpassword != password) {
      isConfirmPasswordValid.value = false;
    } else {
      isConfirmPasswordValid.value = true;
    }
    // validating email and password and checking static email
    if (isEmailValid.value && isPasswordValid.value && isConfirmPasswordValid.value) {
      emailController.clear();
      passwordController.clear();
      confirmPasswordController.clear();

      Get.snackbar("Success", "Signed Up Successfully!",
          colorText: Colors.white,backgroundColor: Colors.blue);
    }else{
      Get.snackbar("error", "Sign Up Failed!",
          colorText: Colors.white,backgroundColor: Colors.red);
    }
  }
}