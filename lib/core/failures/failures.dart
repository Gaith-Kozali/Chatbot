abstract class Failure {
  String call();
}

class NoService extends Failure {
  @override
  String call() {
    return "failure the answer of question is not available because you should pay to open ai company";
  }
}
