void main() {
  // müsterinin adini tut
  // müsterinin parasini ogren
  // müsteriye merhabe diyip parasını söyle
  // bizim bankaya geldigi icin parasina +5 tl ekle
  // ya acaba 10 yapabilirmiyiz

  print("Merhaba" + '${25 + 5}');

  int userMoney = 25;
  String usereName = "Berkay";
  userMoney = userMoney + 5;

  print("Merhaba $usereName $userMoney");

  print('--------');
  userMoney = userMoney - 10;

  print('Paraniz deger kaybetti $userMoney');

  userMoney = userMoney + 5;
  userMoney += 5;

  userMoney = userMoney ~/ 2;

  double ahmetMoney = 15.2;

  ahmetMoney = ahmetMoney / 2;

  print('ahmet bey paraniz uctu $ahmetMoney');
  print('Berkay bey paraniz uctu $userMoney');

  // yenni bir user adi oluştur
  // yeni bir para ver
  // bu parayı 20 ye böly ve ekrande göster

  int ulasMoney = 40;
  String userName = "Ulas";
  ulasMoney = ulasMoney ~/ 20;

  print("Merhaba $userName $ulasMoney");
}
