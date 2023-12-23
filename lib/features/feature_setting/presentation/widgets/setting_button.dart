import 'package:cr/core/constants/app_colors.dart';
import 'package:cr/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 396.w,
        height: 64,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 17.h),
        decoration: ShapeDecoration(
          color: Theme.of(context).colorScheme.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12).r,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'chat history & training',
              style: AppFonts.inter20W600,
            ),
            SizedBox(
              height: 38,
              width: 113.w,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12).r,
                            side: BorderSide(
                                color: Theme.of(context).primaryColor)),
                      )),
                  onPressed: () {},
                  child: Text(
                    "Delete",
                    style: AppFonts.inter15W400,
                  )),
            ),
          ],
        ));
  }
}
