import "package:meta/meta_meta.dart" show Target, TargetKind;

@Target({TargetKind.function})
class Todo {
  final String who;
  final String what;

  // 注解类的构造函数必须是const
  const Todo(this.who, this.what);
}