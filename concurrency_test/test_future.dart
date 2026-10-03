import 'dart:io';

void main() async {
  var result = await readFileAsync('study.txt');
  print(result);
}

// 异步编程Future
Future<String> readFileAsync(String filename) {
  final file = File(filename);

  // .readAsString() returns a Future.
  // .then() registers a callback to be executed when `readAsString` resolves.
  return file.readAsString().then((contents) {
    return contents.trim();
  });
}
