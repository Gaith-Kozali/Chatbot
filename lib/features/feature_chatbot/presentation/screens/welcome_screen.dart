import 'package:cr/core/constants/app_fonts.dart';
import 'package:cr/core/constants/app_images_path.dart';
import 'package:cr/core/constants/app_strings.dart';
import 'package:cr/features/feature_authentication/presentation/widgets/authentic_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gif_view/gif_view.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.longestSide),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 259.w,
                  child: Text(
                    AppStrings.welcomeTitle,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                GifView.network(
                  width: 325,
                  height: 322,
                  isAntiAlias: true,
                  AppImagesPath.welcomePicture,
                  progress: const Padding(
                      padding: EdgeInsets.all(100),
                      child: CircularProgressIndicator()),
                ),
                SizedBox(
                  width: 339.w,
                  child: AuthenticButton(
                      title: "Start chat",
                      color: Theme.of(context).primaryColor),
                )
              ],
            ))),
      ),
    );
  }
}
