void main() {
  final userNormal = User("vb", 15);
  final userBank = BankUser("name", 155, 123);
  final userSpecial = SpecialUser("asd", 1000, 123123, 30);

  userNormal.sayMoneyWithCompanyName();
  userBank.sayMoneyWithCompanyName();
  userBank.sayMoneyWithCompanyName();

  print(userSpecial.money);
  print(userSpecial.calculateMoney);
}

// paralarini görebilmelerini istiyorum benim banka isimle birlikte

abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);

  void sayMoneyWithCompanyName() {
    print("Ahmet- $money paraniz vardir");
  }
}

class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money) : super(name, money);
}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name, money);

  void bankSpecialLogic() {
    print(money);
  }
}

class SpecialUser extends IUser {
  final String name;
  final int money;
  final int bankingCode;
  late final int _discount;

  SpecialUser(this.name, this.money, this.bankingCode, int discount)
      : super(name, money) {
    _discount = discount;
  }
// indirimli fiyatım nekadar

  int get calculateMoney => money - (money ~/ _discount);
}
