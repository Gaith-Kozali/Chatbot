import 'package:cr/features/feature_authentication/presentation/widgets/authentic_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoButtons extends StatelessWidget {
  const InfoButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            width: 182.w,
            child:
                AuthenticButton(title: "Skip", color: const Color(0x3011122C))),
        SizedBox(width: 182.w, child: AuthenticButton(title: "Signup")),
      ],
    );
  }
}
