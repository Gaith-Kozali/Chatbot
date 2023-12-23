import 'package:cr/core/constants/app_fonts.dart';
import 'package:cr/features/feature_chatbot/presentation/widgets/chat_appbar.dart';
import 'package:cr/features/feature_setting/presentation/widgets/choose_theme_widget.dart';
import 'package:cr/features/feature_setting/presentation/widgets/setting_button.dart';
import 'package:cr/features/feature_setting/presentation/widgets/setting_widget.dart';
import 'package:cr/features/feature_setting/presentation/widgets/switch_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatAppBar(context,title: "Setting"),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SwitchSetting(),
          SettingWidget(),
          SettingWidget(),
          SettingButton(),
          SettingButton(),
          ChooseThemeWidget()
        ],
      )),
    );
  }
}
