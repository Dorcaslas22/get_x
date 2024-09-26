import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/views/login_screen.dart';

import '../controller/auth_controller.dart';

class SignUpScreen extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.blue.shade900,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30,),
              Obx(() => TextField(
                controller: authController.emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email,color: Colors.blue.shade900,
                  ),
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.blue.shade900,),
                  errorText: authController.isEmailValid.value ? null:
                  "Enter a valid email",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              ),
              SizedBox(height: 20,),
              Obx(() => TextField(
                controller: authController.passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock,color: Colors.blue.shade900,
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.blue.shade900,),
                  errorText: authController.isPasswordValid.value ? null:
                  "Password must be at least 6 characters",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
                obscureText: true,
              ),
              ),
              SizedBox(height: 20,),
              Obx(() => TextField(
                controller: authController.confirmPasswordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock,color: Colors.blue.shade900,
                  ),
                  labelText: "Confirm password",
                  labelStyle: TextStyle(color: Colors.blue.shade900,),
                  errorText: authController.isConfirmPasswordValid.value ? null:
                  "Password do not match",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
                obscureText: true,
              ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                onPressed: () => authController.login,
                child: Text("Sign Up",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:  Colors.blue.shade900,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: () => Get.to(() => LoginScreen()),
                child: Text("Already have an account? Login",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue.shade900,
                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
