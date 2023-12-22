import 'package:cr/core/constants/app_fonts.dart';
import 'package:cr/core/constants/app_images_path.dart';
import 'package:cr/features/feature_chatbot/presentation/widgets/chat_appbar.dart';
import 'package:cr/features/feature_chatbot/presentation/widgets/intro_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gif_view/gif_view.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({super.key});

  @override
  State<ChatBotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatBotScreen> {
  bool firstSend = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatAppBar(),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                reverse: true,
            padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 11.w),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  firstSend
                      ? IntroMessage(index)
                      : 
                  Padding(
                    padding: EdgeInsets.only(bottom: 25.h),
                    child:  Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            width: 310.w,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF11122C),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    const Radius.circular(20).r)
                                    .copyWith(bottomRight: Radius.zero),
                              ),
                            ),
                            child:Text(
                                'Hello ! there',
                                style: AppFonts.inter16W400,
                              ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CircleAvatar(
                            radius: 13.r,
                            backgroundColor: Colors.red,
                          )
                        ]),
                  ),
                ],
              );
            },
          )),
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 340.w,
                  child: TextFormField(
                    style: AppFonts.inter16W700,
                    decoration: InputDecoration(
                        fillColor: Color(0x334D4C66),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17).r,
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17).r,
                            borderSide: BorderSide.none),
                        hintText: 'Ask me anything... ',
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(AppImagesPath.scanIcon)),
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    AppImagesPath.microphoneIcon))
                          ],
                        )),
                  ),
                ),
                GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: const Color(0xFF11122C),
                      radius: 27.h,
                      child: SvgPicture.asset(AppImagesPath.sendIcon),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

// GifView.network(
// AppImagesPath.welcomePicture,
// height: 272.h,
// width: 236.w,
// ),
