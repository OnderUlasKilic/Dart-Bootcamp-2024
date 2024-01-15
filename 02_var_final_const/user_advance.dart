void main() {
  String userName = "ulas";

  final int bankMoney = 100;
  const String bankName = "OB Bank";

  var userName2 = "ulas2";
  var userName2Money = 15;

  userName2Money -= 10;

  // ---------------
  // Bank name = "OB bank"
  // bank user 1 = "bank1musteri"
  // bank user 1 in parası 100.00
  // bank1 müsteriye kimse dokunamaz
  // yeni bir müsteri gelecek adi bank2musteri
  // yeni bankaya gelenden bu bank user1 parasini cikartip ekrana gösterelim

  const String bankNameSpecial = "OB Bank";

  final String user1 = "Bank 1 musteri";
  const double user1Money = 100.00;

  const String user2 = "Bank 2 musteri";
  int user2Money = 500;

  user2Money = user2Money - user1Money.toInt();

  print("User 2 Money: $user2Money");
}


// Odev2
// Benim bir hali saham var kapasitesi 100 kişilik
// saat 10'da 20 kişilik bir müsteri1 mac yapicak ve 20 kişi kesin gelecek
// saat 10'da müsteri2 gelip bana 50 kişilik yer ayriticak 
// bu işlem sonrası benim hali saha kapsitem kaç kalmistir
// Hint
// int sum = müsteri1 + müsteri2
// print total(const) - sum