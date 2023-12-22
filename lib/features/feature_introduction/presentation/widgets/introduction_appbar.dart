import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar introductionAppBar() {
  return AppBar(
      flexibleSpace: FlexibleSpaceBar(
    background: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {},
            child: Row(children: [
              Text(
                'Skip',
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 20.spMin,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Icon(
                Icons.keyboard_double_arrow_right_outlined,
                color: Colors.black,
              )
            ])),
        SizedBox(
          width: 24.w,
        )
      ],
    ),
  ));
}
