import 'package:cr/core/constants/app_colors.dart';
import 'package:cr/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StopGeneratingWidget extends StatelessWidget {
  const StopGeneratingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210.w,
      height: 55,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: AppColors.black),
          borderRadius: BorderRadius.circular(9).r,
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.stop,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Text('Stop generating...', style: AppFonts.inter18W500)
      ]),
    );
  }
}
