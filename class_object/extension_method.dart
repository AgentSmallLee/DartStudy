
void main() {
  print('42'.parseInt()); // Use an extension method.
  print(NumberParse('21').parseInt2()); // Use an extension method.
}

// 匿名扩展函数
extension on String {
  int parseInt() {
    return int.parse(this);
  }
}

// 命名扩展函数
extension NumberParse on String {
  int parseInt2() {
    return int.parse(this);
  }
}
