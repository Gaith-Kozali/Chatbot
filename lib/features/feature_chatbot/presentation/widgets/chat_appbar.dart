import 'package:cr/core/constants/app_colors.dart';
import 'package:cr/core/constants/app_fonts.dart';
import 'package:cr/core/constants/app_images_path.dart';
import 'package:cr/features/feature_setting/presentation/screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

PreferredSizeWidget chatAppBar(BuildContext context, {required String title}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(
        kToolbarHeight + 1), // Adjust the height as needed
    child: Container(
        decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(color: AppColors.lightBlack, width: 1)),
        ),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(title, style: AppFonts.inter24W500),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SettingScreen.route);
              },
              icon: SvgPicture.asset(AppImagesPath.settingIcon,
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.primary, BlendMode.srcIn)),
            ),
            SizedBox(
              width: 10.w,
            ),
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,
                color: Theme.of(context).colorScheme.primary),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        )),
  );
}
