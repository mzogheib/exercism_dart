// on every year that is evenly divisible by 4
// except every year that is evenly divisible by 100
// unless the year is also evenly divisible by 400

class Leap {
  bool _isDivisibleBy(int num, int divisor) {
    return num % divisor == 0;
  }

  bool _isDivisibleBy4(int num) {
    return _isDivisibleBy(num, 4);
  }

  bool _isDivisibleBy100(int num) {
    return _isDivisibleBy(num, 100);
  }

  bool _isDivisibleBy400(int num) {
    return _isDivisibleBy(num, 400);
  }

  bool leapYear(int year) {
    return _isDivisibleBy4(year) && !_isDivisibleBy100(year) ||
        (_isDivisibleBy4(year) && _isDivisibleBy400(year));
  }
}
