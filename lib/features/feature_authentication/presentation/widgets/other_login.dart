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
        _other(AppImagesPath.facebookIcon),
        _other(AppImagesPath.googleIcon),
        _other(AppImagesPath.appleIcon)
      ],
    );
  }
}

_other(String imagePath) => InkWell(
      child: Container(
        width: 110.w,
        height: 55.h,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFEFEEEE)),
            borderRadius: BorderRadius.circular(110),
          ),
        ),
        child: SvgPicture.asset(imagePath),
      ),
      onTap: () {},
    );
