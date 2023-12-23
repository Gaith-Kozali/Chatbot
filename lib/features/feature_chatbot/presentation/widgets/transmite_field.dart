import 'package:cr/core/constants/app_fonts.dart';
import 'package:cr/core/constants/app_images_path.dart';
import 'package:cr/features/feature_chatbot/presentation/controllers/chatbot_bloc.dart';
import 'package:cr/features/feature_chatbot/presentation/screens/chatbot_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TransmiteField extends StatelessWidget {
  TransmiteField({super.key});
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 340.w,
            child: TextFormField(
              controller: textEditingController,
              style: AppFonts.inter16W700,
              decoration: InputDecoration(
                  fillColor: Color(0x334D4C66),
                  filled: true,
                  enabledBorder: _inputBorder,
                  focusedBorder: _inputBorder,
                  hintText: 'Ask me anything... ',
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(AppImagesPath.scanIcon)),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(AppImagesPath.microphoneIcon))
                    ],
                  )),
            ),
          ),
          GestureDetector(
              onTap: () {
                BlocProvider.of<ChatbotBloc>(context)
                    .add(SendMessageEvent(text: textEditingController.text));
                textEditingController.clear();
              },
              child: CircleAvatar(
                backgroundColor: const Color(0xFF11122C),
                radius: 27.h,
                child: SvgPicture.asset(AppImagesPath.sendIcon),
              ))
        ],
      ),
    );
  }
}

InputBorder _inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(17).r, borderSide: BorderSide.none);
