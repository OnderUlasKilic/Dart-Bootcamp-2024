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

  // ya dedi acaba 0 değilde en azindan bi 5tl si olsun

  // yeni müşteri gelir paraso 50 tl
  // pasasini dolar yapmak istiyor ve kaç dolar yaptigini merak ediyor

  final newUserMoney = 50;

  print(newUserMoney / 30);

  int result = convertToDolar(newUserMoney);

  print(result);
  if (result > 0) {}
  // bana dolar hesaplama yap eger ben sana söylemezsem yeni bir durum var diye her zaman 30 al

  final newResult = converToStandartDolar(100, dolarIndex: 30);
  final newResult2 = converToEuro(userMoney: 100);
}

void controlUserMoney(int money, int minumumValue) {
  if (money > minumumValue) {
    print("para var");
  } else {
    print("para yok");
  }
}

int convertToDolar(int userMoney) {
  return userMoney ~/ 30;
}

int converToStandartDolar(int userMoney, {int dolarIndex = 30}) {
  return userMoney ~/ dolarIndex;
}

int converToEuro({required int userMoney, int dolarIndex = 30}) {
  return userMoney ~/ dolarIndex;
}
