void main(List<String> arguments) {
  print(arguments);
  print(isBig2(2));

  enableFlags(bold: true, hidden: false);
  f(false);
  f2();
  f2(true);
  f3(bold: true);
  f4(bold: false);
}

bool isBig(int number) {
  return number > 2;
}

// 箭头函数
bool isBig2(int number) => number > 3;

void enableFlags({bool? bold, bool? hidden}) {}

// 位置参数
void f(bool bold) {}

// 位置参数，可选
void f2([bool? hidden]) {}
// 位置参数，默认值
void f22([bool hidden = true]) {}

// 命名参数,默认值
void f3({bool bold = false}) {}

// 命名参数，可选
void f4({bool? bold}) {}

// 命名参数，required
void f5({required bool bold}) {}
