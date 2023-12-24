import 'package:cr/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StopGeneratingWidget extends StatelessWidget {
  const StopGeneratingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 55,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(9).r,
        ),
      ),
      child: Center(
          child: Row(children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.stop,
            color: Theme.of(context).primaryColor,
            size: 18,
          ),
        ),
        Text(
          'Stop generating..',
          style: AppFonts.inter18W500,
        )
      ])),
    );
  }
}
