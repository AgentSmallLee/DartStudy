void main() {
 /* int? absentValue = null;
  int? presentValue = 3;
  var items = [
    1,
    ?absentValue, // 空感知元素，不会加入集合
    ?presentValue,
    absentValue,
    5,
  ]; // [1, 3, null, 5]
  print(items);*/

  String? presentKey = 'Apple';
  String? absentKey = null;

  int? presentValue = 3;
  int? absentValue = null;

  var itemsA = {presentKey: absentValue}; // {Apple: null}
  var itemsB = {presentKey: ?absentValue}; // {}

  var itemsC = {absentKey: presentValue}; // {null: 3}
  var itemsD = {?absentKey: presentValue}; // {}

  var itemsE = {absentKey: absentValue}; // {null: null}
  var itemsF = {?absentKey: ?absentValue}; // {}

}
