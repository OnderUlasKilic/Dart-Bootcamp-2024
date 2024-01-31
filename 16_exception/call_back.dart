void main() {
  final user = User(money: 5);

  user.calculateMoney((int result) {
    print(user.money);
    return result + 5;
  });
}

typedef CalculateCallBack = int Function(int data);

class User {
  @deprecated
  int money;
  User({
    required this.money,
  });

  void calculateMoney(CalculateCallBack onComplate) {
    money += 5;
    final passData = onComplate(money);
  }
}
