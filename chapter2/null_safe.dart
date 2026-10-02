void main() {
  String? name = null;

  if (name != null) {
    print(name);
  } else {
    print('name is null');
  }

  print(name ?? "dd");

  name ??= "df";
  print(name);
  
}
