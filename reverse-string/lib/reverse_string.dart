String reverse(String input) {
  final chars = input.split('');
  final length = chars.length;

  List<String> outputChars = [];

  for (int i = 0; i < length; i++) {
    final oppositeChar = chars[length - i - 1];
    outputChars.add(oppositeChar);
  }

  return outputChars.join('');
}
