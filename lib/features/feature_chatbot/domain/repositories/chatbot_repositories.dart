import 'package:cr/core/failures/failures.dart';
import 'package:dartz/dartz.dart';

abstract class ChatBotRepository {
  Future<Either<Failure, String>> chatWithAi({required String question});
}
