import 'package:cr/core/constants/app_colors.dart';
import 'package:cr/core/constants/app_fonts.dart';
import 'package:cr/features/feature_chatbot/presentation/screens/chatbot_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroMessage extends StatelessWidget {
  IntroMessage(this.index, {super.key});
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w).copyWith(bottom: 20.h),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 28.h, horizontal: 31.w),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(16).r),
          child: Text(
            introString[index],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ));
  }
}
