import 'package:cr/core/constants/app_colors.dart';
import 'package:cr/features/feature_authentication/presentation/screens/signup_screen.dart';
import 'package:cr/features/feature_authentication/presentation/widgets/authentic_button.dart';
import 'package:cr/features/feature_chatbot/presentation/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoButtons extends StatelessWidget {
  const InfoButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            width: 182.w,
            child: AuthenticButton(
                title: "Skip",
                color: Theme.of(context).colorScheme.secondary,
                func: () {
                  Navigator.pushNamed(context, WelcomeScreen.route);
                })),
        SizedBox(
            width: 182.w,
            child: AuthenticButton(
                title: "Signup",
                color: Theme.of(context).primaryColor,
                func: () {
                  Navigator.pushNamed(context, WelcomeScreen.route);
                })),
      ],
    );
  }
}
