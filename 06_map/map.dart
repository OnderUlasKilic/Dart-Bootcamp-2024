void main() {
  // müsteri geldi adi ahmet parasi 20

  Map<String, int> users = {"ahmet": 20, "mehmet": 30};

  // müsteri ahmetin ne kadar parasi var

  print("ahmetin parasi ${users["ahmet"]}");

  // müsteri kimler var senin elinde

  for (var item in users.keys) {
    print("${item} - ${users[item]}");
  }
  for (var i = 0; i < users.length; i++) {
    print("${users.keys.elementAt(i)} - ${users.values.elementAt(i)}");
  }

  // benim kankamın müsterilerinin birden fazla hesabi olabilir
  // ahmet bey 3 hesabı var sırasıyla 100, 300, 200
  // mehmet bey 2 hesabı var 30 50
  //veli bey 1 hesap 30tl

  // adamlarin hesaplarini kontrol et herhangibir hesapta 150 tlden fazla olan varsa kredniz hazır de

  Map<String, List<int>> vbBank = {
    "ahmet": [100, 300, 200]
  };
  vbBank["mehmet"] = [30, 50];
  vbBank["veli"] = [30];

  for (var item in vbBank.keys) {
    // bankanın tüm elemenları

    for (var money in vbBank[item]!) {
      if (money > 150) {
        print("Krediniz Hazır");
        break;
      }
    }
  }

  // bankadaki müsterilerin hepsaplarinin toplam mevlasini merak ediyorum

  for (var name in vbBank.keys) {
    // vbBan [item] --> müsterinin hesaplari demek
    int result = 0;
    for (var money in vbBank[name]!) {
      result += money;
    }

    print("$name senin toplam paran -> $result");
  }
}
