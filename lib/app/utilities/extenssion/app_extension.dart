import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/app_colors.dart';

extension WidgetExtension on num {

  Widget get horizontalSpacing => SizedBox(width: toDouble());
  Widget get verticalSpacing => SizedBox(height: toDouble());
  Widget get divider => Container(width: toDouble(),height: 0.5, color:  AppColors.borderColor);

  BorderRadius get circularRadius => BorderRadius.circular(toDouble().r);
  EdgeInsets get allMargin => EdgeInsets.all(toDouble());

}