void main(List<String> args) {
  IUser user = Turk();

  user.sayName();

  print("----------");
  user = English();

  user.sayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayName();
}

class Turk implements IUser {
  @override
  String get name => "Veli";

  @override
  void sayName() {
    print("merhaba hoşgeldiniz $name");
  }
}

class English implements IUser {
  @override
  String get name => "Adam";

  @override
  void sayName() {
    print("welcome to your home $name");
    print("let\'s meet our friends in Oxford");
  }
}
