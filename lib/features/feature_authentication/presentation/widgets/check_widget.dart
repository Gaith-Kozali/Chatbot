import 'package:cr/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget CheckWidget(bool isCheck, String title) {
  return StatefulBuilder(
    builder: (context, setState) {
      return SizedBox(
        width: 500.w,
        child: CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: EdgeInsets.zero,
          activeColor: Color(0xFF12132D),
          value: isCheck,
          onChanged: (value) {
            setState(() {
              isCheck = !isCheck;
            });
            print(isCheck);
          },
          title: Text(
            title,
            style: AppFonts.inter14W600,
          ),
        ),
      );
    },
  );
}
