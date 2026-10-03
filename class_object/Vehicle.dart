class Vehicle {
  void moveForward(int meters) {
    print('Moving $meters meters');
  }
}

class Car extends Vehicle {
  @override
  void moveForward(int meters) {
    super.moveForward(meters);
  }
}

class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {}
}
