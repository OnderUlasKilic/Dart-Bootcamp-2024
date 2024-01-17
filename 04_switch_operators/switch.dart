void main() {
  final int classDegree = 2;
  bool isSucess = false;
// 2 ise ekrana bravo
// 1 ise olur
// 0 ise yeterli
// diğer durumlarda basarisiz

  const int succesValueHigh = 2;

  switch (classDegree) {
    case succesValueHigh:
      print("bravp");
      isSucess = true;
      break;
    case 1:
      print("olur");
      isSucess = true;
      break;
    case 0:
      print("yeterli");
      isSucess = true;
      break;
    default:
      print("basarisiz");
      isSucess = false;
  }
  print("beyfendi cocugunuzun sonucu: $isSucess");

  // magazaya gelen isimlerden veli olan olursa rpint bravoo yaz

  String name = "veli";

  const String specialUser1 = "veli";
  const String specialUser2 = "ekin";

  switch (name) {
    case specialUser1:
    case specialUser2:
      print("bravo");
      break;
    default:
      print("sorunlu");
  }
}
