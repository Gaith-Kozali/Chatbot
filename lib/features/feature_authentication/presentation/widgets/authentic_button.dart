import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:cr/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthenticButton extends StatelessWidget {
  AuthenticButton(
      {super.key,
      required this.title,
      required this.color,
      required this.func});
  String title;
  Color color;
  VoidCallback func;
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
          onPressed: func,
          child: Text(
            title,
            style: AppFonts.inter24W700,
            maxLines: 1,
          )),
    );
  }
}
