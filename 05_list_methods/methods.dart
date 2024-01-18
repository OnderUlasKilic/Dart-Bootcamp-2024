void main() {
  //benim bir müşterim var parasi varmı yok mu kontrol edermisin

  final int userMoney = 0;
  controlUserMoney(userMoney, 0);
  // if (userMoney > 0) {
  //   print("parasi var");
  // } else {
  //   print("parası yok");
  // }

  // ya dedi acaba 0 değilde en azindan bi 5tl si olsun

  final int user2Money = 5;
  controlUserMoney(user2Money, 5);
  // if (userMoney > 5) {
  //   print("parasi var");
  // } else {
  //   print("parası yok");
  // }
}

void controlUserMoney(int money, int minumumValue) {
  if (money > minumumValue) {
    print("para var");
  } else {
    print("para yok");
  }
}
