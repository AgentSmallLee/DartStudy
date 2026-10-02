

void main() {
  try {
    //test([1, 2, 3]);
  } on Error catch (e) {
    print(e);
  }
  test2();
}

void test(Object pair) {
  if (pair case [int x, int y]) {
    print('Was coordinate array $x,$y');
  } else {
    throw FormatException('Invalid coordinates.');
  }
}

void test2() {
  try {
    breedMoreLlamas();
  } on OutOfLlamasException {
    // A specific exception
    buyMoreLlamas();
  } on Exception catch (e) {
    // Anything else that is an exception
    print('Unknown exception: $e');
  } catch (e) {
    // No specified type, handles all
    print('Something really unknown: $e');
  }
}

void buyMoreLlamas() {
  throw Error();
}

void breedMoreLlamas() {
  throw OutOfLlamasException("dd");
}

class OutOfLlamasException implements Exception {
  final String message;

  OutOfLlamasException(this.message);

  @override
  String toString() => 'MyException: $message';
}
