// Letter                           Value
// A, E, I, O, U, L, N, R, S, T       1
// D, G                               2
// B, C, M, P                         3
// F, H, V, W, Y                      4
// K                                  5
// J, X                               8
// Q, Z                               10

class Letter {
  int value;

  Letter(String letter) {
    value = this._value(letter);
  }

  int _value(String letter) {
    if (['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'].contains(letter)) {
      return 1;
    } else if (['D', 'G'].contains(letter)) {
      return 2;
    } else if (['B', 'C', 'M', 'P'].contains(letter)) {
      return 3;
    } else if (['F', 'H', 'V', 'W', 'Y'].contains(letter)) {
      return 4;
    } else if (['K'].contains(letter)) {
      return 5;
    } else if (['J', 'X'].contains(letter)) {
      return 8;
    } else if (['Q', 'Z'].contains(letter)) {
      return 10;
    } else {
      return 0;
    }
  }
}

int score(String word) {
  final letters = word.split('');

  if (letters.length == 0) {
    return 0;
  }
  final values = letters
      .map((letter) => letter.toUpperCase())
      .map((letter) => Letter(letter).value);

  return values.reduce((value, runningTotal) => runningTotal + value);
}
