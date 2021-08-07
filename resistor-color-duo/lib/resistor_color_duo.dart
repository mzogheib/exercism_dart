class ResistorColorDuo {
  static const _colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];

  int _getColorCode(String color) {
    return _colors.indexOf(color);
  }

  int value(List<String> colors) {
    final stringValue =
        colors.take(2).map(_getColorCode).map((v) => v.toString()).join('');

    return int.parse(stringValue);
  }
}
