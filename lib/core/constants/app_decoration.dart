import 'package:cr/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDecoration {
  AppDecoration(this.context);
  BuildContext context;
  InputDecoration inputDecoration() => InputDecoration(
      hintText: "Email",
      hintStyle: GoogleFonts.inter(
        color: AppColors.lightBlack,
        fontSize: 16.spMin,
        fontWeight: FontWeight.w500,
      ),
      enabledBorder: _inputBorder(),
      focusedBorder: _inputBorder());

  InputBorder _inputBorder() => UnderlineInputBorder(
      borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 2),
      borderRadius: BorderRadius.circular(1));
  BoxDecoration dropDownBox() => BoxDecoration(
      borderRadius: BorderRadius.vertical(bottom: const Radius.circular(12).r),
      color: Theme.of(context).colorScheme.secondary,
      border: Border.all(color: Theme.of(context).primaryColor));
}
