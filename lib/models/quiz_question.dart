class QuizQuestion {
  const QuizQuestion(this.text, this.answer);
  final String text;
  final List<String> answer;

  List<String> get shuffleAnswers {
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }
}
