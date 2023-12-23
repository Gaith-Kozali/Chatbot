import 'package:bloc/bloc.dart';
import 'package:cr/features/feature_chatbot/domain/use_cases/chatAi_useCase.dart';
import 'package:cr/features/feature_chatbot/presentation/screens/chatbot_screen.dart';
import 'package:meta/meta.dart';

part 'chatbot_event.dart';
part 'chatbot_state.dart';

class ChatbotBloc extends Bloc<ChatbotEvent, ChatbotState> {
  ChatWithAiUseCase chatWithAiUseCase;
  ChatbotBloc({required this.chatWithAiUseCase}) : super(ChatbotInitial()) {
    on<ChatbotEvent>((event, emit) async {
      if (event is SendMessageEvent) {
        sendMessages.add(event.text);
        emit(WaitingState());
        print(
            "frrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrooooom bloc the list is $sendMessages  the response ");
        final data = await chatWithAiUseCase.call(text: event.text);
        data.fold((l) {
          emit(ReceiveAnswerState(answer: l.call()));
        }, (r) {
          emit(ReceiveAnswerState(answer: r));
        });
      }
    });
  }
}
