void main() {
  int money = 15;
  String userName = "Ulas";

  // bool ==> 0 , 1

  bool isCustomerRich = false;

  print("$money" + userName);

// if else

  if (money > 10) {
    print("Sen zenginsin abii");
  } else {
    print("gerekirse simit yeriz");
  }

  money = money - 10;

  if (money > 10) {
    print("Sen cok zenginsina abi");
  } else {
    print("abi burda ne isin var");
  }

  // musteri bankaya gelir ve 10 tlsi vardır ve bir sorgu yapar
  // sorgu sonucu 20tl si alınacak fakat  eger parası sorguya yeterliyse
  // eger kalan parasi sifirdan küşüçse bankadan kovulur
  // eger adamın paraso bankingcost yetmiyorsa bankaya almayin

  int newCustumerMoney = 0;
  const int bankingCost = 5;
  const int bankingCostGeneral = 20;

  if (newCustumerMoney > bankingCost) {
    print("hoşgeldiniz");
    newCustumerMoney = newCustumerMoney - bankingCostGeneral;
  } else if (newCustumerMoney > 0) {
    print("beyfendi lütfen sira aliniz");
  } else {
    print("beyfendi kredinizi lütfen ödeyin");
  }

  // bir magzata isim verilecek
  // örne isimler toplanır
  // ornek isimler : ahmet, mehmet, veli, kx, x
  // magaza  isimleri sadece karakter uzunlugu iki veya daha alti olarları görmek istiyor
  // bu kola uyanlari yan yana görmek istiyoruum aralarında bosluk olacak

  final String ahmetCompany = "Ahmet";
  final String mehmetCompany = "Mehmet";
  final String veliCompany = "Veli";
  final String kxCompany = "kx";
  final String xCompany = "x";

  String results = "";
  const int companyLenght = 2;

  if (ahmetCompany.length > companyLenght) {
    results = results + ahmetCompany;
  }
  if (mehmetCompany.length > companyLenght) {
    results = results + mehmetCompany;
  }
  if (veliCompany.length > companyLenght) {
    results = results + veliCompany;
  }
  if (kxCompany.length > companyLenght) {
    results = results + kxCompany;
  }
  if (xCompany.length > companyLenght) {
    results += xCompany;
  }
  print(results);

  if (results.isEmpty) {
    //if (results.length == 0) {
    print("patron bulamadık");
  } else {
    print(results);
  }
}
