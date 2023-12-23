import 'package:cr/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({super.key});

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
                            side: BorderSide(color: Theme.of(context).primaryColor)
                          ),
                        )),
                    onPressed: () {},
                    child: Text('Export',
                        style: AppFonts.inter15W400
                            .copyWith(color: const Color(0xFF11122C)))))
          ],
        ));
  }
}
