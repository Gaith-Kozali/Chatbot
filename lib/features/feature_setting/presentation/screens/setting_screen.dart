import 'package:cr/core/constants/app_fonts.dart';
import 'package:cr/features/feature_chatbot/presentation/widgets/chat_appbar.dart';
import 'package:cr/features/feature_setting/presentation/widgets/choose_theme_widget.dart';
import 'package:cr/features/feature_setting/presentation/widgets/setting_appbar.dart';
import 'package:cr/features/feature_setting/presentation/widgets/setting_button.dart';
import 'package:cr/features/feature_setting/presentation/widgets/setting_widget.dart';
import 'package:cr/features/feature_setting/presentation/widgets/switch_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
  static String route = "SettingScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: settingAppBar(context),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SwitchSetting(),
          SettingWidget(
              text: "shared links", buttonTitle: "Manage", func: () {}),
          SettingWidget(
            text: "Export data",
            buttonTitle: 'Explore',
            func: () {},
          ),
          const ChooseThemeWidget(),
          SettingButton(
            title: "clear data",
            buttonTitle: "Clean",
            func: () {},
          ),
          SettingButton(
            title: "Delete account",
            buttonTitle: "Delete",
            func: () {},
          ),
          SizedBox(
            height: 50.h,
          )
        ],
      )),
    );
  }
}
