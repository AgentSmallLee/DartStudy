void main() {
  var gifts = {'name': 'dd', 'age': 12, 'isMan': false};
  print(gifts.runtimeType); // _Map<String, Object>

  var hobbys = Map<String, String>();
  hobbys['first'] = 'aa';
  hobbys['second'] = 'bb';
  hobbys['third'] = 'cc';
  print(hobbys);
  for (var entry in hobbys.entries) {
    print("${entry.key}:${entry.value}");
  }
}
