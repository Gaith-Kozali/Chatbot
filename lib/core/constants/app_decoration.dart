import 'package:cr/core/constants/app_images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDecoration {
  static InputDecoration inputDecoration() => InputDecoration(
      hintText: "Email",
      hintStyle: GoogleFonts.inter(
        color: const Color(0x7F3A3A3A),
        fontSize: 16.spMin,
        fontWeight: FontWeight.w500,
      ),
      enabledBorder: _inputBorder(),
      focusedBorder: _inputBorder());

  static InputBorder _inputBorder() => UnderlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFF12132D), width: 2),
      borderRadius: BorderRadius.circular(1));
  static  BoxDecoration dropDownBox = BoxDecoration(
      borderRadius: BorderRadius.vertical(bottom: const Radius.circular(12).r),
      color: const Color(0xFFDBDBE0),
      border: Border.all(color: const Color(0xFF11122C)));
}
