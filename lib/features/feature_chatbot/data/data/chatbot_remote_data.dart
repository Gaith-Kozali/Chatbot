import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';

abstract class ChatBotRemoteData {
  Future<String> chatComplete({required String text});
}

class ChatBotRemoteDataImp implements ChatBotRemoteData {
  final String _apiKey = "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";

  Future<String> chatComplete({required String text}) async {
    print("the eeeeee   question from remote dataaaaaaaaaaaaaaaaa $text");
    final openAI = OpenAI.instance.build(
        token: _apiKey,
        baseOption: HttpSetup(receiveTimeout: const Duration(seconds: 400)),
        enableLog: true);
    final request = ChatCompleteText(
        messages: [Messages(role: Role.user, content: text)],
        maxToken: 200,
        model: GptTurbo0301ChatModel());

    ChatCTResponse? response = await openAI.onChatCompletion(request: request);
    for (var element in response!.choices) {
      print("data -> ${element.message?.content}");
    }
    return response.choices.elementAt(0).message!.content;
  }
}
