import 'package:cr/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Div() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      SizedBox(
        width: 117.w,
        child: const Divider(
          color: Color(0XFFEFEEEE),
          thickness: 2,
        ),
      ),
      Text('or continue with',
          style: AppFonts.inter16W500.copyWith(color: Color(0xFF9EAFB0))),
      SizedBox(
        width: 117.w,
        child: const Divider(
          color: Color(0XFFEFEEEE),
          thickness: 2,
        ),
      ),
    ],
  );
}
