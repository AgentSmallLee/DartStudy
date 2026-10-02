void main() {
  // records 类型
  var records = ('first', a: 2, b: true, 'last');
  print(records.$1); // first
  print(records.$2); // last
  print(records.a); // 2
  print(records.b); // true
  var nums = (2, 3);
  var result = swap(nums);
  print(result); // (3,2)
  print(result.$1); // 位置字段
  print(result.$2); // 位置字段
  test();
}

(int, int) swap((int, int) record) {
  // 解构
  var (a, b) = record;
  return (b, a);
}

void test() {
  // 定义位置字段
  (String, int) records;
  records = ('aa', 2);

  // 定义命名字段
  ({int a, bool b}) records2;
  records2 = (a: 2, b: true);

  ({int a, int b}) recordAB = (a: 1, b: 2);
  ({int x, int y}) recordXY = (x: 3, y: 4);
  // recordAB = recordXY; 编译报错，命名字段的名称不一样，两个records也是不同的类型

  // 位置字段，可以赋值
  (int a, int b) recordAB1 = (1, 2);
  (int x, int y) recordXY1 = (3, 4);

  recordAB1 = recordXY1; // OK.

  // 位置record,命名不参与类型
  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);

  print(point == color); // Prints 'true'.

  // Destructures using a record pattern with positional fields:
  var (name, age) = userInfo(json);

  /* Equivalent to:
  var info = userInfo(json);
  var name = info.$1;
  var age  = info.$2;
*/
  print(name);
  print(age);
}

// Returns multiple values in a record:
(String name, int age) userInfo(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}

final json = <String, dynamic>{'name': 'Dash', 'age': 10, 'color': 'blue'};

var button = (label: "Button I", onPressed: () => print("Action -> Button I"));

// typedef 定义类型
typedef ButtonItem = ({String label, void Function()? onPressed});
