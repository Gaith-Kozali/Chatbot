import 'package:cr/core/constants/app_colors.dart';
import 'package:cr/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';

enum AppTheme {
  dark("Dark"),
  light("Light"),
  system("System");

  const AppTheme(this.name);
  final String name;
}

Map<AppTheme, ThemeData> themeData = {
  // theme of light mood
  AppTheme.light: ThemeData(
      primaryColor: AppColors.black,
      dividerColor: AppColors.white,
      textTheme: TextTheme(
//to introduction screen
        titleLarge: AppFonts.inter32W700,
        titleMedium: AppFonts.inter20W700,
        titleSmall: AppFonts.inter16W500,
// to authentication
        displayLarge: AppFonts.inter36W500,
        displayMedium: AppFonts.inter20W600,
        displaySmall: AppFonts.inter14W400,
        // message receive
        labelMedium: AppFonts.inter16W400.copyWith(color: AppColors.black),
        labelSmall: AppFonts.inter14W600,
        // to the forget password and under
        bodySmall: AppFonts.inter14W500,
      ),
      colorScheme: const ColorScheme.light(
          primary: AppColors.black,
          secondary: AppColors.server,
          brightness: Brightness.light)),

  // theme of dark mood
  AppTheme.dark: ThemeData(
      primaryColor: AppColors.blue,
      dividerColor: AppColors.white,
      textTheme: TextTheme(
        titleLarge:
            AppFonts.inter32W700.copyWith(color: AppColors.whiteIntroDark),
        titleMedium:
            AppFonts.inter20W700.copyWith(color: AppColors.whiteIntroDark),
        titleSmall:
            AppFonts.inter16W500.copyWith(color: AppColors.whiteIntroDark),
        // to authentication
        displayLarge:
            AppFonts.inter36W500.copyWith(color: AppColors.whiteIntroDark),
        displayMedium:
            AppFonts.inter20W600.copyWith(color: AppColors.whiteIntroDark),
        displaySmall:
            AppFonts.inter14W400.copyWith(color: AppColors.whiteIntroDark),

        // message receive
        labelMedium: AppFonts.inter16W400.copyWith(color: AppColors.black),

        labelSmall:
            AppFonts.inter14W600.copyWith(color: AppColors.whiteIntroDark),

        // to the forget password and under
        bodySmall: AppFonts.inter14W500.copyWith(color: AppColors.blue),
      ),
      colorScheme: const ColorScheme.dark(
        primary: AppColors.whiteIntroDark,
        secondary: AppColors.serverBlue,
        background: Color(0XFF21252F),
      )),

  // theme of the system mood
  AppTheme.system: ThemeData(
      primaryColor: AppColors.purple,
      dividerColor: AppColors.white,
      textTheme: TextTheme(
        titleLarge: AppFonts.inter32W700.copyWith(color: AppColors.purple),
        titleMedium: AppFonts.inter20W700.copyWith(color: AppColors.purple),
        titleSmall: AppFonts.inter16W500.copyWith(color: AppColors.purple),
        // to authentication
        displayLarge: AppFonts.inter36W500.copyWith(color: AppColors.purple),
        displayMedium: AppFonts.inter20W600.copyWith(color: AppColors.purple),
        displaySmall: AppFonts.inter14W400.copyWith(color: AppColors.purple),

        // message receive
        labelMedium: AppFonts.inter16W400.copyWith(color: AppColors.black),

        labelSmall: AppFonts.inter14W600.copyWith(color: AppColors.purple),

        // to the forget password and under
        bodySmall: AppFonts.inter14W500.copyWith(color: AppColors.purple),
      ),
      colorScheme: const ColorScheme.light(
        primary: AppColors.purple,
        secondary: AppColors.serverPurple,
      ))
};
