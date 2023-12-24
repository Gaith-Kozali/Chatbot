import 'package:cr/core/constants/app_colors.dart';
import 'package:cr/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchSetting extends StatelessWidget {
  const SwitchSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 396.w,
        height: 64,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 17.h),
        decoration: ShapeDecoration(
          color: Theme.of(context).colorScheme.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'chat history & training',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Switch(
              value: true,
              onChanged: (value) {},
              activeTrackColor: AppColors.lightGreen,
            )
          ],
        ));
  }
}
