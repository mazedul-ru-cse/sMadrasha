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
      // Get.offAllNamed(Routes.LOGIN_PAGE);

    });

  }


}
