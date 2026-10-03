mixin Swimmer {
  void swim() => print('Swimming');
}

mixin Flyer on Animal{
  // Flyer() 不能有构造函数
  void fly() => print('Flying');

  // 后应用的方法覆盖前面的
  void swim() => print('Swimming 2');
}

class Animal;

// 应用mixin
class Duck extends Animal with Swimmer, Flyer {}

void main() {
  final duck = Duck();
  duck.swim(); // Swimming
  duck.fly();  // Flying
}