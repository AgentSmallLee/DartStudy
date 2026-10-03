
void main() {
  var list = [1, 2, 3];
  // 函数作为另一个函数的参数传递
  list.forEach(printElement);

  // 函数复制给一个变量
  var lound = (msg) => msg.toString().toUpperCase();
  print(lound('a'));

  // 匿名函数
  var result = list.map((item) => item.toInt() + 1).toList();
  print(result);
}

void printElement(int element) {
  print(element);
}
