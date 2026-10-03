import 'dart:math';

import 'MyPoint.dart';
import 'Queue.dart';
import 'Television.dart';

void main() {
  var point;

  var a =point?.y;
  print(a); // null

  print(Queue.initialCapacity);

  var mp = MyPoint(2,3);
  mp.x;

  var tv = Television();
  tv.contrast = 2;
  print(tv.contrast);
}
