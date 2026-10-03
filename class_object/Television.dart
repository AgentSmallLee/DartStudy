class Television {
  int _contrast = 0; // 私有字段，真正存数据的地方

  int get contrast => _contrast;

  // ···
  set contrast(int value) {
    _contrast = value;
  }
}

class SmartTelevision extends Television {
  @override
  set contrast(num value) {
    // ···
  }
  // ···
}
