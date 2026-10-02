import 'Foo.dart';

void main() {
  // Declares new variables a, b, and c.
  test(1);
  test1(['a', 'b']);
  test2();
  test7();
}

void test(int number) {
  switch (number) {
    // Constant pattern matches if 1 == number.
    case 1:
      print('one');
  }
}

void test1(Object obj) {
  const a = 'a';
  const b = 'b';
  switch (obj) {
    // List pattern [a, b] matches obj first if obj is a list with two fields,
    // then if its fields match the constant subpatterns 'a' and 'b'.
    case [a, b]:
      print('$a, $b');
  }
}

void test2() {
  var numList = [1, 2, 3];
  // List pattern [a, b, c] destructures the three elements from numList...
  var [a, b, c] = numList; // 列表模式解构
  // ...and assigns them to new variables.
  print(a + b + c);
}

void test3() {
  // Declares new variables a, b, and c.
  var (a, [b, c]) = ('str', [1, 2]);
}

bool test4(String color) {
  // switch表达式
  var isPrimary = switch (color) {
    'red' || 'yellow' || 'blue' => true,
    _ => false,
  };
  return isPrimary;
}

void test5(Object pair) {
  switch (pair) {
    case (int a, int b):
      if (a > b) print('First element greater');
    // If false, prints nothing and exits the switch.
    case (int a, int b) when a > b:
      // If false, prints nothing but proceeds to next case.
      print('First element greater');
    case (int a, int b):
      print('First element not greater');
  }
}

void test6() {
  Map<String, int> hist = {'a': 23, 'b': 100};

  // 对象模式
  for (var MapEntry(key: key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }
}

void test7() {
  var info = userInfo();
  // 位置字段
  print(info.$1);
  print(info.$2);

  // 位置字段解构
  var (name, age) = userInfo();
  print("$name $age");

  (:name, :age) = userInfo2();
  print("$name $age");
}

(String, int) userInfo() {
  return ('haha', 12);
}

// 定义命名字段
({String name, int age}) userInfo2() {
  return (name: 'nihao', age: 33);
}

void test8() {
  final Foo myFoo = Foo(one: 'one', two: 2);
  var Foo(:one, :two) = myFoo;
  print('one $one, two $two');
}
