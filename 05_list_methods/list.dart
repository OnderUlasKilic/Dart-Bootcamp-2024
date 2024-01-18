void main() {
  // bir bankaya on müsteri gelir bunların 100 tlsi 110tl ve 50 tlsi vardır

  final int money1 = 100;
  final int money2 = 110;

  // 100 den büyük olanlara hosgeldiniz beydfendi

  if (money1 > 100) {
    print("beyfendi");
  }
  if (money2 > 100) {
    print("aa");
  }

  String name = '';

  List<int> moneys = [100, 110, 500];

  final List<int> newMoneys = [100, 110, 500];

  print("musteri 1 parasi: ${moneys[0]}");

  // paralari parasi buyuk olana göre sırala

  moneys.sort();
  moneys.add(5);
  moneys.insert(2, 300);
  moneys.insert(0, 11);
  print(moneys);

// newMoneys = [];
  newMoneys.add(5);
  //newMoneys.clear();

  print(newMoneys);

//  newMoneys.reversed.toList();

// 100 tane müsteri yap bunlarin hepsine sira ile numarasine göre 5 tl ekle

  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  print(customerMoney);

  // Custumers 100 30 40 60
  // 35 tl den büyük olanlari burada kredi verebiliriz yaz
  // kücük olanlara bye

  List<int> moneyCustomerNews = [100, 30, 40, 60, -5];

  moneyCustomerNews.sort();

  for (int index = 0; index < moneyCustomerNews.length; index = index + 1) {
    print("müsteriparasi: + ${moneyCustomerNews[index]}");
    if (moneyCustomerNews[index] > 35) {
      print("kredi hazır");
    } else if (moneyCustomerNews[index] > 0) {
      ;
      print("kredi veremeyiz ama bi bakalım");
    } else {
      print("bye");
    }
  }
  print("---");
  for (int index = moneyCustomerNews.length - 1;
      index >= 0;
      index = index - 1) {
    print("müsteriparasi: + ${moneyCustomerNews[index]}");
    if (moneyCustomerNews[index] > 35) {
      print("kredi hazır");
    } else if (moneyCustomerNews[index] > 0) {
      ;
      print("kredi veremeyiz ama bi bakalım");
    } else {
      print("bye");
    }
  }
}
