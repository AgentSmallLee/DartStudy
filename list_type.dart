import 'dart:math';

void main() {
  var list = [1, 2, 3];
  list[1] = 4;
  print(list); // [1,4,3]

  var list2 = const [2, 3, 4]; // const 定义编译时常量
  // list2[1] = 4; 报错，无法修改不可变list
  print(list2);

  for (var l in list) {
    print(l);
  }

  // dart 3.0
  for (var (index, item) in list.indexed) {
    print('$index: $item');
  }
}
