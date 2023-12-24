import 'package:cr/core/constants/app_colors.dart';
import 'package:cr/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';

PreferredSize settingAppBar(BuildContext context) {
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
          title: Text("Setting",
              style: AppFonts.inter24W500
                  .copyWith(color: Theme.of(context).colorScheme.primary)),
          centerTitle: true,
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
