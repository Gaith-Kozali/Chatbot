import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroMessage extends StatelessWidget {
  IntroMessage(this.index, {super.key});
  int index;
  List<String> introString = [
    'ChatGPT is an artificial-intelligence chatbot developed by Open AI',
    'ChatGPT launched in November 2022.',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w).copyWith(bottom: 20.h),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 28.h, horizontal: 31.w),
          decoration: BoxDecoration(
              color: Color(0x334D4C66),
              borderRadius: BorderRadius.circular(16).r),
          child: Text(
            introString[index],
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: Color(0xFF11122C),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ));
  }
}
