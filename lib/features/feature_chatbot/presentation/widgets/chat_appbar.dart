import 'package:cr/core/constants/app_fonts.dart';
import 'package:cr/core/constants/app_images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

PreferredSizeWidget chatAppBar() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(
        kToolbarHeight + 1), // Adjust the height as needed
    child: Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black, width: 1)),
      ),
      child: AppBar(
        elevation: 0,
        title: Text('Chatbot AI', style: AppFonts.inter24W500),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppImagesPath.settingIcon),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
        backgroundColor: Colors.white,
      ),
    ),
  );
}
