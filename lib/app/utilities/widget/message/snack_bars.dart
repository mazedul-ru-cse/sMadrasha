import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

// dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';

void showBasicSuccessSnackBar({
  required String message,
  Widget? icon,
  Function()? onActionTap,
  String buttonText = '',
  double time = 2,
  String? title,
  bool positionTop = true,
}) {
  if (Get.isSnackbarOpen) {
    return;
  }
  Get.rawSnackbar(
    backgroundColor: AppColors.primaryColor,
    icon: icon ?? Icon(
          Icons.task_alt_rounded,
          color: Colors.white,
      size: 16.w,
        ),
    animationDuration: Duration(seconds: 3),
    duration: time.seconds,
    margin:  EdgeInsets.all(16.w),
    padding: EdgeInsets.symmetric(horizontal: 14.w,vertical: 10.h),
    borderRadius: 10.r,
    snackPosition: positionTop ? SnackPosition.TOP : SnackPosition.BOTTOM,
    mainButton: buttonText.isEmpty
        ? const SizedBox()
        : TextButton(
            onPressed: onActionTap,
            child: Text(
              buttonText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
    messageText: Text(
      message,
      style: TextStyle(
        color: Colors.white,
        fontSize: 13,
        fontWeight: FontWeight.w500
      ),
    ),
    title: title,
  );
}

void showBasicFailedSnackBar({
  required String message,
  Widget? icon,
  Function()? onActionTap,
  String buttonText = '',
  double time = 2.5,
  bool positionTop = true,
}) {
  if (Get.isSnackbarOpen) {
    return;
  }

  Get.rawSnackbar(
    backgroundColor: AppColors.errorColor,
    icon: icon ?? Icon(
      Icons.priority_high_rounded,
      color: Colors.white,
      size: 16.w,
    ),
    animationDuration: Duration(seconds: 3),
    duration: time.seconds,
    margin:  EdgeInsets.all(16.w),
    padding: EdgeInsets.symmetric(horizontal: 14.w,vertical: 10.h),
    borderRadius: 10.r,
    snackPosition: positionTop ? SnackPosition.TOP : SnackPosition.BOTTOM,
    mainButton: buttonText.isEmpty
        ? const SizedBox()
        : TextButton(
      onPressed: onActionTap,
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    messageText: Text(
      message,
      style: TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w500
      ),
    ),
  );
}


void showBasicWarningSnackBar({
  required String message,
  Widget? icon,
  Function()? onActionTap,
  String buttonText = '',
  double time = 2.5,
  bool positionTop = true,
}) {
  if (Get.isSnackbarOpen) {
    return;
  }

  Get.rawSnackbar(
    backgroundColor: AppColors.warningColor,
    icon: icon ?? Icon(
      Icons.warning_amber,
      color: Colors.white,
      size: 16.w,
    ),
    animationDuration: Duration(seconds: 3),
    duration: time.seconds,
    margin: EdgeInsets.all(16.w),
    padding: EdgeInsets.symmetric(horizontal: 14.w,vertical: 10.h),
    borderRadius: 10.r,
    snackPosition: positionTop ? SnackPosition.TOP : SnackPosition.BOTTOM,
    mainButton: buttonText.isEmpty
        ? const SizedBox()
        : TextButton(
      onPressed: onActionTap,
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    messageText: Text(
      message,
      style: TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w500
      ),
    ),
  );
}

void showBasicProgressDialog({required String message}) {
  Widget dialog = Center(
    child: Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 24,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(
                color: Colors.white,
                backgroundColor: AppColors.primaryColor,
                strokeWidth: 1.5,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              message,
            ),
          ],
        ),
      ),
    ),
  );

  Get.dialog(
    dialog,
    barrierDismissible: false,
    transitionDuration: const Duration(milliseconds: 400),
  );
}
