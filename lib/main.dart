import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app/routes/app_pages.dart';
import 'app_initialize.dart';

void main() async{

  await AppInitialize.init();

  runApp(
    ScreenUtilInit(
    designSize: const Size(375, 812),
    minTextAdapt: true,
    splitScreenMode: true,

      child: SafeArea(
        top: false,
        left: false,
        right: false,
        bottom: Platform.isAndroid,
        child: GetMaterialApp(
          title: "Application",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              textTheme: GoogleFonts.openSansTextTheme()
          )

        ),
      ),
    ),
  );
}
