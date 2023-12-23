import 'package:cr/core/constants/app_fonts.dart';
import 'package:cr/core/constants/app_images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageReceiveWidget extends StatelessWidget {
  MessageReceiveWidget({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25.h),
      child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
        CircleAvatar(
          radius: 13.r,
          backgroundImage: AssetImage(AppImagesPath.aiBot),
          backgroundColor: Colors.transparent,
        ),
        SizedBox(
          width: 5.w,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          width: 310.w,
          decoration: ShapeDecoration(
            color: const Color(0x334D4C66),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(const Radius.circular(20).r)
                  .copyWith(bottomLeft: Radius.zero),
            ),
          ),
          child: Text(
            title,
            style: AppFonts.inter16W400.copyWith(color: Color(0xFF11122C)),
          ),
        ),
        SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.copy,
                    size: 20,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    size: 20,
                  )),
            ],
          ),
        )
      ]),
    );
  }
}
