import 'package:cr/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingWidget extends StatelessWidget {
  SettingWidget(
      {super.key,
      required this.text,
      required this.buttonTitle,
      required this.func});
  String text;
  String buttonTitle;
  VoidCallback func;
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
              text,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            SizedBox(
                width: 113.w,
                height: 38,
                child: OutlinedButton(
                    style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(
                          Colors.transparent,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12).r,
                              side: BorderSide(
                                  color: Theme.of(context).primaryColor)),
                        )),
                    onPressed: func,
                    child: Text(buttonTitle,
                        style: AppFonts.inter15W400.copyWith(
                            color: Theme.of(context).colorScheme.primary))))
          ],
        ));
  }
}
