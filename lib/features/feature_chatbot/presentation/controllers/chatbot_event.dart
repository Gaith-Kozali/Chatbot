part of 'chatbot_bloc.dart';

@immutable
abstract class ChatbotEvent {}

class SendMessageEvent extends ChatbotEvent {
  SendMessageEvent({required this.text});
  String text;
}
