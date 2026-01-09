import 'dart:developer';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';

class LoginPageController extends GetxController {


  final isLoading = false.obs;
  final errorMessage = ''.obs;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final obscure = true.obs;
  void toggleObscure() => obscure.value = !obscure.value;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> signIn() async {

    if (emailController.text.trim().isEmpty || passwordController.text.isEmpty) {
      errorMessage.value = 'Email and password are required';
      return;
    }


    isLoading.value = true;
    errorMessage.value = '';

    try {
      final auth = Get.find<FirebaseAuth>();
      var userCredential = await auth.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text
      );

      log("userCredential ::${userCredential.user}");
      // Navigate to home or next screen
      Get.offAllNamed(Routes.HOME); // adjust route as needed
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          errorMessage.value = 'No user found with this email';
          break;
        case 'wrong-password':
          errorMessage.value = 'Incorrect password';
          break;
        case 'invalid-email':
          errorMessage.value = 'Invalid email address';
          break;
        default:
          errorMessage.value = e.message ?? 'Login failed';
      }
    } catch (e,tr) {
      errorMessage.value = 'An unexpected error occurred';
      log(e.toString());
      log(tr.toString());
    } finally {
      isLoading.value = false;
    }
  }


}
