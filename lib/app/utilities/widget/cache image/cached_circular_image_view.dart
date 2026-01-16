import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smadrasha/app/utilities/extenssion/app_extension.dart';

import '../../../data/app_colors.dart';
import '../../../data/assets_names.dart';

class CachedCircularImageView extends StatelessWidget {
  const CachedCircularImageView({super.key, required this.imageUrl, this.size = 60,  this.errorImage});
  final String imageUrl;
  final double size;
  final String? errorImage;

  @override
  Widget build(BuildContext context) {
    return  CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder:(context, imageProvider)=> Container(
        height: size.w,
        width: size.w,
        decoration: BoxDecoration(
          borderRadius: 1000.circularRadius,
          border: Border.all(color: AppColors.borderColor,width: 0.5),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) {
        return SizedBox(
          height: size,
          width: size,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: AppColors.primaryColor.withOpacity(0.5),
          ),
        );
      },
      errorWidget: (context, url, error){

        return Container(
          height: size.w,
          width: size.w,
          decoration: BoxDecoration(
              borderRadius: 1000.circularRadius,
              border: Border.all(color: AppColors.borderColor,width: 0.5),
              image: DecorationImage(
                image: AssetImage(errorImage??AssetsNames.instance.profile),
                fit: BoxFit.cover,
              )
          ),
        );


      },

    );
  }
}
