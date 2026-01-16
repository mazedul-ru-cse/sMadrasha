import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:smadrasha/app/data/app_colors.dart';
import 'package:smadrasha/app/data/assets_names.dart';
import 'package:smadrasha/app/utilities/extenssion/app_extension.dart';

import '../../../utilities/style/text_style.dart';
import '../../../utilities/widget/cache image/cached_circular_image_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.h),
        child: AppBar(
          backgroundColor: AppColors.primaryColor,
          flexibleSpace: SafeArea(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CachedCircularImageView(
                      imageUrl: "https://randomuser.me/api/portraits/men/1.jpg",
                    ),
                    4.verticalSpace,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Mazedul Islam ",
                        style: CustomTextStyle.title15WhiteBold,
                      ),
                      TextSpan(
                        text: "(Super Admin)",
                        style: CustomTextStyle.title15WhiteBold.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize:
                        ),
                      ),
                    ],
                  ),
                              ),
                  ],
                ),
              ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0.w),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.1,
          children: [
            Card(
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.person_add_alt_1, size: 40),
                      SizedBox(height: 8),
                      Text('Admission', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.event_available, size: 40),
                      SizedBox(height: 8),
                      Text('Attendance', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.bed, size: 40),
                      SizedBox(height: 8),
                      Text('Hostel', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.account_balance_wallet, size: 40),
                      SizedBox(height: 8),
                      Text('Fee', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.more_horiz, size: 40),
                      SizedBox(height: 8),
                      Text('Others', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
