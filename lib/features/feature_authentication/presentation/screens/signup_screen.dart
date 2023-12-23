import 'package:cr/core/constants/app_colors.dart';
import 'package:cr/core/constants/app_decoration.dart';
import 'package:cr/core/constants/app_fonts.dart';
import 'package:cr/core/constants/app_images_path.dart';
import 'package:cr/features/feature_authentication/presentation/widgets/authentic_button.dart';
import 'package:cr/features/feature_authentication/presentation/widgets/check_widget.dart';
import 'package:cr/features/feature_authentication/presentation/widgets/div.dart';
import 'package:cr/features/feature_authentication/presentation/widgets/other_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  bool isCheck = false;
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.longestSide),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello there',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 29.h, bottom: 60.h),
                  child: Text(
                      'Please enter you email & password to create an account ',
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Text(
                  'Your email',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                SizedBox(
                  width: 378.w,
                  child: TextFormField(
                    decoration: AppDecoration(context)
                        .inputDecoration()
                        .copyWith(
                            hintText: "Enter your email",
                            suffixIcon:
                                SvgPicture.asset(AppImagesPath.emailIcon)),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  'Create password',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                StatefulBuilder(
                  builder: (context, setState) {
                    return SizedBox(
                      width: 378.w,
                      child: TextFormField(
                        obscureText: visible,
                        decoration:
                            AppDecoration(context).inputDecoration().copyWith(
                                hintText: "Create your password",
                                suffixIcon: InkWell(
                                  child: SvgPicture.asset(visible
                                      ? AppImagesPath.eyeOffIcon
                                      : AppImagesPath.eyeIcon),
                                  onTap: () {
                                    setState(() {
                                      visible = !visible;
                                    });
                                  },
                                )),
                      ),
                    );
                  },
                ),
                CheckWidget(isCheck,
                    "I agree to Chatbot_AI  Public Agreement, Terms, & Privacy Policy."),
                Padding(
                    padding: EdgeInsets.only(top: 42.h, bottom: 21.h),
                    child: AuthenticButton(
                      title: "Signup",
                      color: Theme.of(context).primaryColor,
                    )),
                Center(
                    child: Text(
                  'Forget password?',
                  style: Theme.of(context).textTheme.bodySmall,
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: AppFonts.inter14W500
                          .copyWith(color: AppColors.lightBlack),
                    ),
                    TextButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all<Color>(
                                Colors.transparent)),
                        onPressed: () {},
                        child: Text(
                          'Sign in',
                          style: Theme.of(context).textTheme.bodySmall,
                        ))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 24.h, top: 60.h),
                  child: Div(context),
                ),
                const OtherLogin(),
              ],
            ),
          )),
    );
  }
}
