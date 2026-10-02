void printInts(List<int> a) => print(a);

void main() {
  final list = [];
  list.add(1);
  list.add('2');
  // printInts(list); // 编译报错，The argument type 'List<dynamic>' can't be assigned to the parameter type 'List<int>'.
}
