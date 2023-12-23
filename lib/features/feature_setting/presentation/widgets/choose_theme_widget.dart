import 'package:cr/core/constants/app_decoration.dart';
import 'package:cr/core/constants/app_fonts.dart';
import 'package:cr/core/constants/app_images_path.dart';
import 'package:cr/features/feature_setting/presentation/controllers/setting_bloc.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

List<String> _themeOption = ["Dark", "Light", "System"];
String _theme = "system";

class ChooseThemeWidget extends StatelessWidget {
  const ChooseThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 396.w,
        height: 64,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 17.h),
        decoration: ShapeDecoration(
          color: Theme.of(context).colorScheme.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12).r,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'chat history & training',
              style: AppFonts.inter20W600,
            ),
            Container(
              width: 113.w,
              height: 38,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side:  BorderSide(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(12).r,
                ),
              ),
              child: Center(child: _chooseTheme(context)),
            )
          ],
        ));
  }
}

DropdownButton2 _chooseTheme(BuildContext context) => DropdownButton2(
      customButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Text(_theme), const Icon(Icons.arrow_drop_down_sharp)],
      ),
      items: _themeOption
          .map((e) => DropdownMenuItem(
                value: e,
                child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Color(0xFF11122C)))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(e),
                          SizedBox(width: 40.w),
                          SvgPicture.asset(AppImagesPath.theme[e] ?? "")
                        ],
                      ),
                    )),
              ))
          .toList(),
      onChanged: (value) {
        _theme = value;
        BlocProvider.of<SettingBloc>(context)
            .add(ChangeThemeEvent(theme: _theme));
      },
      underline: const SizedBox(),
      menuItemStyleData: const MenuItemStyleData(
        padding: EdgeInsets.zero,
        height: 40,
      ),
      dropdownStyleData: DropdownStyleData(
        padding: EdgeInsets.zero,
        width: 133.w,
        decoration: AppDecoration(context).dropDownBox(),
      ),
    );
