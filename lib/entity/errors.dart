class SpellingError implements Exception {
  final String originalWord;
  const SpellingError(this.originalWord);

  @override
  String toString() => 'Possible spelling error in $originalWord';
}

class GeneralError implements Exception {
  final String msg;

  const GeneralError(this.msg);

  @override
  String toString() => msg;
}