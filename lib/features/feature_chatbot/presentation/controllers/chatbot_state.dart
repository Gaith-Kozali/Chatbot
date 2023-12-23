part of 'chatbot_bloc.dart';

@immutable
abstract class ChatbotState {}

class ChatbotInitial extends ChatbotState {}

class ReceiveAnswerState extends ChatbotState {
  ReceiveAnswerState({required this.answer});
  String answer;
}

class WaitingState extends ChatbotState {}
