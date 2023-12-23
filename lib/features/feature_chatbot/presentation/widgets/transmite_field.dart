import 'package:cr/core/constants/app_colors.dart';
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
  void sendMes(BuildContext context) {
    BlocProvider.of<ChatbotBloc>(context)
        .add(SendMessageEvent(text: textEditingController.text));
    textEditingController.clear();
  }

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
                  fillColor: Theme.of(context).colorScheme.secondary,
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
              onTap: () => sendMes(context),
              child: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
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
