import 'package:cr/core/constants/app_fonts.dart';
import 'package:cr/core/constants/app_images_path.dart';
import 'package:cr/core/functions/global_functions.dart';
import 'package:cr/features/feature_chatbot/presentation/widgets/transmite_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageSendWidget extends StatelessWidget {
  MessageSendWidget({super.key, required this.text});
  String text;
  bool isArabic = false;

  @override
  Widget build(BuildContext context) {
    bool isArabic = containsArabic(text);
    return Padding(
      padding: EdgeInsets.only(bottom: 25.h),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: 310.w,
              decoration: ShapeDecoration(
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(const Radius.circular(20).r)
                      .copyWith(bottomRight: Radius.zero),
                ),
              ),
              child: Text(
                textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
                textAlign: isArabic ? TextAlign.right : TextAlign.left,
                text,
                style: AppFonts.inter16W400,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            CircleAvatar(
              radius: 13.r,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage(AppImagesPath.avatar),
            )
          ]),
    );
  }
}
