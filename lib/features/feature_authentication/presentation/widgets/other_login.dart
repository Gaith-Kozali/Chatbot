import 'package:cr/core/constants/app_images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OtherLogin extends StatelessWidget {
  const OtherLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _other(AppImagesPath.facebookIcon, context),
        _other(AppImagesPath.googleIcon, context),
        _other(AppImagesPath.appleIcon, context)
      ],
    );
  }
}

_other(String imagePath, BuildContext context) => InkWell(
      child: Container(
        width: 110.w,
        height: 55.h,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1, color: Theme.of(context).colorScheme.primary),
            borderRadius: BorderRadius.circular(110).r,
          ),
        ),
        child: SvgPicture.asset(imagePath),
      ),
      onTap: () {},
    );
