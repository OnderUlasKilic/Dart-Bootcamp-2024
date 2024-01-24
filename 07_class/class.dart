import 'dart:async';

import 'model/user_model.dart';
import 'model/user_model_2.dart';

void main() {
// müsteri adı var, parasi var, yasi var ...

  final int customerMoney = 50;
  final String customerName = "veli";
  final int customerAge = 13;
  final String customerCity = "Ardahan";

  // bu müsterimin yasi 10 dan büyükse bir işlem yapalim

  if (customerAge > 10) {
    print("alisveriş yapabilirsiniz");
  } else {
    print("alisveris yapamazsiniz");
  }

  // yeni müsteri geliyor yine ayni alanlar

  final int customerMoney2 = 50;
  final String customerName2 = "veli2";
  final int customerAge2 = 13;
  final String customerCity2 = "Antalya";

  controlCustomerAge(customerAge2);

  // unutmusuz müsterilerin sehirleri
  //-----------
  // ya ben müsterileri gruplasa, yani bir kümelense ve bunlari ayni özelliklerini ayni sekilde bana gösterebilse

  int? newMoney;
  if (newMoney != null) {
    print(newMoney + 50);
  } else {
    print(10 + 10);
  }

  // müsteri diyorki ya bak bizim bir servisimiz var paralari veren eger bir cavap gelmezse sen ana deger olarak 10 ata
  // print(newMoney! +10);
  //print(newMone + 10);

  // bankaya 3 tane müsteri glier birinin 100tlsi var digerinin hesabi hiç yok digerinin tlsi var
  // hesabi olmayana gelin hesağ acalim, 0 tlsi olani kov, 100 tlsi olana müsterim hosgeldin

  // yeni bir method olsun bu methodda hesabi olmayanlarin sifir sayalim
  // para verdiklerimizi ekranda true yazalim

  List<int?> customerMoneys = [100, null, 0];

  if (customerMoneys[0] != null) {
    // Eger null ise ekrana hic birsey yazmayacak.
    print(customerMoneys[0]! + 2);
  } else {
    print('Deger null');
  }

  print(customerMoneys[0] != null
      ? customerMoneys[0]! + 2
      : 'Deger null'); // Bu kod line 54 ve 59 arasindaki kod ile birebir ayni isi yapiyor.

  print((customerMoneys[0] ?? 0) + 2); // Ekrana 2 yazacak.

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print("beyfendi");
      } else {
        print("bye");
      }
    } else {
      print("haydi hesap açalım");
    }

    // ----
    bool result = controlMoney(item) == null ? false : true;
    print(result);
  }

  print("\n");

  int customerMoneyX = 15;

  User user1 = User("vb", 15, age: 21, city: "aaa", id: '123');

  //User user2 = User("vb", 15, null, null);

  final user3 = User("Ali", 159, age: 13, id: '12');

  print(user3.userCode);

  print(user1.name);

  // müsteri son gelen kisinin citysine göre kampanya  yapacak eger istanbul ise

  if (user3.city == null) {
    print("müsteri sehir bilgisini vermemis");
  } else {
    if (user3.city!.isEmpty) {
      print("oke");
    }

    if (user3.city == "istanbul") {
      print("tebrikler kazandiniz");
    }
  }

  // müsteri idsi 12 olana indirim yap

  if (user3.isSpecialUser("12")) {
    user3.money += 5;
    print("para eklendi");
  }

  //-------------

  User2 newUser2 = User2("vb", 15);
  newUser2.money += 5;
  newUser2.money = null;
}

int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return money;
  }

  // if (money == null || money == 0) {
  //   return null;
  // }
}

void controlCustomerAge(int value) {
  if (value > 10) {
    print("alisveriş yapabilirsiniz");
  } else {
    print("alisveris yapamazsiniz");
  }
}
