bool containsArabic(String text) {
  final arabicRegex = RegExp(
      r'[\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF\uFB50-\uFDCF\uFDF0-\uFDFF\uFE70-\uFEFF]');
  final match = arabicRegex.firstMatch(text);
  return match != null;
}
