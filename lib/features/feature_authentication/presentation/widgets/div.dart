import 'package:cr/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Div(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      SizedBox(
        width: 117.w,
        child: Divider(
          color: Theme.of(context).dividerColor,
          thickness: 2,
        ),
      ),
      Text('or continue with',
          style: AppFonts.inter16W500
              .copyWith(color: Theme.of(context).colorScheme.primary)),
      SizedBox(
        width: 117.w,
        child: Divider(
          color: Theme.of(context).dividerColor,
          thickness: 2,
        ),
      ),
    ],
  );
}
