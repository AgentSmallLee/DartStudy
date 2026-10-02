void main() {
  List<int>? a = null;
  var b = [1, 2, null, 3];
  var c = [0, ...?a, ...b, 4];
  print(c); // [0, 1, 2, null, 3, 4]
}
