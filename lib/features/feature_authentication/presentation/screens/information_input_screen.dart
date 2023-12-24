import 'package:cr/core/constants/app_decoration.dart';
import 'package:cr/core/constants/app_images_path.dart';
import 'package:cr/features/feature_authentication/presentation/widgets/auth_appbar.dart';
import 'package:cr/features/feature_authentication/presentation/widgets/choose_profile.dart';
import 'package:cr/features/feature_authentication/presentation/widgets/info_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

List<String> _countryCode = ["+20", "+966", "+971"];
String _phoneCode = "+20";
String? _gender;

class InformInputScreen extends StatelessWidget {
  const InformInputScreen({super.key});
  static String route = "InformInputScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AuthAppBar(context),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 25.w).copyWith(bottom: 5.h),
          child: ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.longestSide -
                      AuthAppBar(context).preferredSize.height),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Complete your profile',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Text(
                    'Please enter your details to complete your profile, don’t worry your details are private.',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const Center(
                    child: ChooseProfile(),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Full name',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(
                    width: 378.w,
                    child: TextFormField(
                      decoration:
                          AppDecoration(context).inputDecoration().copyWith(
                                hintText: "Full name",
                              ),
                    ),
                  ),
                  Text(
                    'Phone',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(
                    width: 378.w,
                    child: TextFormField(
                      decoration:
                          AppDecoration(context).inputDecoration().copyWith(
                                hintText: "Your phone number",
                                suffixIcon:
                                    SvgPicture.asset(AppImagesPath.phoneIcon),
                                prefixIcon: _choosePhoneCode(context),
                              ),
                    ),
                  ),
                  Text(
                    'Gender',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  _chooseGender(context),
                  SizedBox(
                    height: 50.h,
                  ),
                  const InfoButtons()
                ],
              )),
        ));
  }
}

DropdownButton2 _choosePhoneCode(BuildContext context) => DropdownButton2(
    onChanged: (value) {
      _phoneCode = value!;
    },
    items: _countryCode
        .map((e) => DropdownMenuItem(
              value: e,
              child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Theme.of(context).primaryColor))),
                  child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppImagesPath.countryImage[e]!),
                          SizedBox(width: 10.w),
                          Text(e)
                        ]),
                  )),
            ))
        .toList(),
    underline: const SizedBox(),
    dropdownStyleData: DropdownStyleData(
      offset: Offset(378.w / 8, 0),
      padding: EdgeInsets.zero,
      maxHeight: 120,
      width: 203.w,
      decoration: AppDecoration(context).dropDownBox(),
    ),
    menuItemStyleData: const MenuItemStyleData(
      padding: EdgeInsets.zero,
      height: 120 / 3,
    ),
    customButton: SizedBox(
        width: 60,
        child: Row(
          children: [
            SvgPicture.asset(AppImagesPath.googleIcon),
            const Icon(Icons.arrow_drop_down_outlined)
          ],
        )));
SizedBox _chooseGender(BuildContext context) => SizedBox(
      width: 378.w,
      child: DropdownButtonFormField2(
        value: _gender,
        onChanged: (value) {
          _gender = value;
        },
        items: ["female", "male"]
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Theme.of(context).primaryColor))),
                      child: Center(
                        child: Text(e),
                      )),
                ))
            .toList(),
        dropdownStyleData: DropdownStyleData(
          offset: Offset(160.w, 0),
          padding: EdgeInsets.zero,
          width: 203.w,
          maxHeight: 80,
          decoration: AppDecoration(context).dropDownBox(),
        ),
        menuItemStyleData:
            const MenuItemStyleData(height: 80 / 2, padding: EdgeInsets.zero),
      ),
    );
