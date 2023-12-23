import 'package:cr/core/failures/failures.dart';
import 'package:cr/features/feature_chatbot/domain/repositories/chatbot_repositories.dart';
import 'package:dartz/dartz.dart';

class ChatWithAiUseCase {
  ChatWithAiUseCase({required this.chatBotRepository});
  ChatBotRepository chatBotRepository;
  Future<Either<Failure, String>> call({required String text}) async {
    final data = await chatBotRepository.chatWithAi(question: text);
    return data;
  }
}
