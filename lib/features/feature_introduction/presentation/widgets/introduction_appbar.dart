import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar introductionAppBar(BuildContext context) {
  return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        background: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {},
                child: Row(children: [
                  Text(
                    'Skip',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Icon(
                    Icons.keyboard_double_arrow_right_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  )
                ])),
            SizedBox(
              width: 24.w,
            )
          ],
        ),
      ));
}
