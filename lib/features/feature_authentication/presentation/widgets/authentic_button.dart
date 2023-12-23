import 'package:cr/core/constants/app_colors.dart';
import 'package:cr/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthenticButton extends StatelessWidget {
  AuthenticButton({super.key, required this.title, required this.color});
  String title;
  Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      width: 378.w,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              )),
          onPressed: () {},
          child: Text(
            title,
            style: AppFonts.inter24W700,
            maxLines: 1,
          )),
    );
  }
}
