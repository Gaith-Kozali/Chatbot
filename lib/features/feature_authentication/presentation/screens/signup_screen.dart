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
                  style: AppFonts.inter20W600,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 29.h, bottom: 60.h),
                  child: Text(
                      'Please enter you email & password to create an account ',
                      style: AppFonts.inter14W400),
                ),
                Text(
                  'Your email',
                  style: AppFonts.inter14W600,
                ),
                SizedBox(
                  width: 378.w,
                  child: TextFormField(
                    decoration: AppDecoration.inputDecoration().copyWith(
                        hintText: "Enter your email",
                        suffixIcon: SvgPicture.asset(AppImagesPath.emailIcon)),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  'Create password',
                  style: AppFonts.inter14W600,
                ),
                StatefulBuilder(
                  builder: (context, setState) {
                    return SizedBox(
                      width: 378.w,
                      child: TextFormField(
                        obscureText: visible,
                        decoration: AppDecoration.inputDecoration().copyWith(
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
                    )),
                Center(
                    child: Text(
                  'Forget password?',
                  style: AppFonts.inter14W500,
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: AppFonts.inter14W500
                          .copyWith(color: Color(0xC63A3A3A)),
                    ),
                    TextButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all<Color>(
                                Colors.transparent)),
                        onPressed: () {},
                        child: Text(
                          'Sign in',
                          style: AppFonts.inter14W500,
                        ))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 24.h, top: 60.h),
                  child: Div(),
                ),
                const OtherLogin(),
              ],
            ),
          )),
    );
  }
}
