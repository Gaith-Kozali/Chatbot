import 'package:cr/core/failures/failures.dart';
import 'package:cr/features/feature_chatbot/data/data/chatbot_remote_data.dart';
import 'package:cr/features/feature_chatbot/domain/repositories/chatbot_repositories.dart';
import 'package:dartz/dartz.dart';

class ChatBotRepositoryImp implements ChatBotRepository {
  ChatBotRepositoryImp({required this.chatBotRemoteData});
  ChatBotRemoteData chatBotRemoteData;
  @override
  Future<Either<Failure, String>> chatWithAi({required String question}) async {
    try {
      final String answer =
          await chatBotRemoteData.chatComplete(text: question);
      return Right(answer);
    } catch (e) {
      print("caaaaaaaaaaaaaaaatch errror  from $e");
      return Left(NoService());
    }
  }
}
