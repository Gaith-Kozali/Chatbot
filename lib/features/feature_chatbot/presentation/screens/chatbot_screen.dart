import 'package:cr/core/constants/app_images_path.dart';
import 'package:cr/features/feature_chatbot/presentation/controllers/chatbot_bloc.dart';
import 'package:cr/features/feature_chatbot/presentation/widgets/chat_appbar.dart';
import 'package:cr/features/feature_chatbot/presentation/widgets/intro_message.dart';
import 'package:cr/features/feature_chatbot/presentation/widgets/message_receive_widget.dart';
import 'package:cr/features/feature_chatbot/presentation/widgets/message_send_widget.dart';
import 'package:cr/features/feature_chatbot/presentation/widgets/stop_generating_widget.dart';
import 'package:cr/features/feature_chatbot/presentation/widgets/transmite_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gif_view/gif_view.dart';

List<String> sendMessages = [];
List<String> receiveMessages = [];
List<String> introString = [
  'ChatGPT is an artificial-intelligence chatbot developed by Open AI',
  'ChatGPT launched in November 2022.',
];

class ChatBotScreen extends StatelessWidget {
  ChatBotScreen({super.key});
  static String route = "ChatBotScreen";
  late bool displayIntro;
  late bool displayImage;
  late int displaySendMes;
  late int displayReceiveMes;
  late bool displayRec;

  int itemCountCalculate() {
    return displayIntro ? introString.length : sendMessages.length;
  }

  void initDisplay(int index) {
    displaySendMes = sendMessages.length - (index + 1);
    displayReceiveMes = receiveMessages.length - (index + 1);
    displayImage = index == 0 && displayIntro;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: chatAppBar(context, title: "Chat bot AI"),
        body: Column(
          children: [
            BlocBuilder<ChatbotBloc, ChatbotState>(builder: (context, state) {
              displayIntro = sendMessages.isEmpty;

              if (state is ReceiveAnswerState) {
                receiveMessages.add(state.answer);
              }

              return Expanded(
                  child: ListView.builder(
                reverse: !displayIntro,
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 11.w),
                itemCount: itemCountCalculate(),
                itemBuilder: (context, index) {
                  initDisplay(index);
                  displayRec = (receiveMessages.length > index &&
                      (state is ReceiveAnswerState || state is WaitingState));
                  return Column(
                    children: [
                      displayImage
                          ? (GifView.network(
                              AppImagesPath.welcomePicture,
                              height: 272.h,
                              width: 236.w,
                            ))
                          : const SizedBox(),
                      displayIntro
                          ? IntroMessage(index)
                          : MessageSendWidget(
                              text: sendMessages[displaySendMes]),
                      displayRec
                          ? MessageReceiveWidget(
                              title: receiveMessages[displayReceiveMes],
                            )
                          : SizedBox(),
                      (state is WaitingState && index == 0)
                          ? const StopGeneratingWidget()
                          : SizedBox()
                    ],
                  );
                },
              ));
            }),
            TransmiteField(),
            const SizedBox(
              height: 10,
            )
          ],
        ));
  }
}
