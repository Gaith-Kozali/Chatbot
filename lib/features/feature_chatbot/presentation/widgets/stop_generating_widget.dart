import 'package:cr/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StopGeneratingWidget extends StatelessWidget {
  const StopGeneratingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210.w,
      height: 55,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xFF3A3A3A)),
          borderRadius: BorderRadius.circular(9).r,
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.stop,
            color: Color(0xFF11122C),
          ),
        ),
        Text('Stop generating...', style: AppFonts.inter18W500)
      ]),
    );
  }
}
