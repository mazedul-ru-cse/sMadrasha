
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../style/main_button_style/main_button_style.dart';
class MainButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final bool loading;
  final Color backgroundColor;
  final double? borderRadius;

  const MainButton({
    required this.title,
    this.onTap,
    this.loading = false,
    this.backgroundColor = AppColors.primaryColor,
    this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: loading ? null : onTap,
      style: mainButtonStyle(
        mainColor: backgroundColor,
        borderRadius: borderRadius?.r ?? 4.r,
      ),
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: loading ? Colors.transparent : Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
            ),
            Visibility(
              visible: loading,
              child: SizedBox(
                height: 16.w,
                width: 16.w,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                  strokeWidth: 2.w,
                  color: AppColors.primaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
