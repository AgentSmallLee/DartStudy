void main(){
  // 相邻字符串字面亮进行字符串拼接
  var s = 'hello ' 'world';
  print(s);
  var s2 = 'hello '
        'world';
  print(s2);

  // 多行字符串
  var multis = '''
    this is multi
    string
  ''';
  print(multis);

  // 原生字符串
  var raws = r'this is \n book';
  print(raws);
}