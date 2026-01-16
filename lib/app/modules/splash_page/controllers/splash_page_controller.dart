import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashPageController extends GetxController {

  @override
  void onInit() {
    nextPage();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void nextPage(){

    Future.delayed(Duration(seconds: 5), (){

        var user = FirebaseAuth.instance.currentUser;
        if(user != null){
          Get.offAllNamed(Routes.HOME);
          return;
        }else {
          Get.offAllNamed(Routes.LOGIN_PAGE);
        }
    });

  }


}
