import 'dart:developer';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smadrasha/app/utilities/widget/message/snack_bars.dart';

import '../../../../routes/app_pages.dart';

class LoginPageController extends GetxController {


  final isLoading = false.obs;

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
      showBasicWarningSnackBar(message: 'Email and password are required');
      return;
    }


    isLoading.value = true;

    try {
      final auth = Get.find<FirebaseAuth>();
      var userCredential = await auth.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text
      );

      var user = FirebaseAuth.instance.currentUser;

      log("user ::${user}");

      // Navigate to home or next screen
     Get.offAllNamed(Routes.HOME); // adjust route as needed
    } on FirebaseAuthException catch (e) {
      var errorMessage = '';
      switch (e.code) {
        case 'user-not-found':
          errorMessage = 'No user found with this email';
          break;
        case 'wrong-password':
          errorMessage = 'Incorrect password';
          break;
        case 'invalid-email':
          errorMessage = 'Invalid email address';
          break;
        default:
          errorMessage = e.message ?? 'Login failed';
      }
      showBasicFailedSnackBar(message: errorMessage);

    } catch (e,tr) {
      showBasicFailedSnackBar(message: 'An unexpected error occurred');
      log(e.toString());
      log(tr.toString());
    } finally {
      isLoading.value = false;
    }
  }


}
