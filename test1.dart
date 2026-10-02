void main(){
  num a = 1;
  print(a);
  double z = 1; // 和double z = 1.0 相同，int 类型的1会自动转化为double

  // string 转化为int
  var one = int.parse('1');
  print(one);
  dynamic two = 2.toString();
  print(two);
  // int -> String
  String oneAsString = 1.toString();
  print(oneAsString);
// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  print(piAsString);

  var size = 'big';
  var result = 'this is a $size apple';
  print(result);

  var model = 'iqoo';
  print('my phone is ${model.toUpperCase()}');
}