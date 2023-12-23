import 'package:cr/core/constants/app_colors.dart';
import 'package:cr/core/constants/app_images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChooseProfile extends StatefulWidget {
  const ChooseProfile({super.key});

  @override
  State<ChooseProfile> createState() => _ChooseProfileState();
}

class _ChooseProfileState extends State<ChooseProfile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 100.w,
        height: 100.w,
        child: Stack(
          children: [
            SvgPicture.asset(AppImagesPath.user, height: 100.w, width: 100.w),
            Positioned(
                left: 100.w - 20.w,
                bottom: 10.w,
                child: InkWell(
                  child: Container(
                    width: 20.w,
                    height: 20.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).w,
                        color: AppColors.lightBlack),
                    child: Icon(
                      Icons.edit,
                      size: 15.w,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  onTap: () {},
                ))
          ],
        ));
  }
}
