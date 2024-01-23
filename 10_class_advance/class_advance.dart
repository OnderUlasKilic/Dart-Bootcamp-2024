void main() {
  final user = _User("veli", age: 21);

  // müsterinin yası 18 den kücük kontrolü yaparmısın

  // if((user.age ?? 0) <18){}

  if (user.age is! int) {
    // burda çocunlukla "!" kullanmasakda user age i int icinden geçirdigimizden burda forcelamak bir soun yaratmıyor
    if (user.age! < 18) {
      print("evet kücük");
      user.updateMoneyWithString("TR");
    } else {
      user.updateMoneyWithNumber(15);
    }
  }
  // kullanıcımın parasi var ama paranin tipi değişken olablir
  // paras olan adamin o parametresi bir  isimde olabilir veya degerde olabilir
  // tr yazacak yada orada 15 de (int olarak) yazabilir
  // ekrana göster

  final _newType = user.moneyType is String ? (user.moneyType as String) : "";
  // print((user.moneyType as String) + "A");
  print(_newType + "A");

  //==============

  int money1 = 50;
  int money2 = 50;

  if (money1 == money2) {
    print("oke");
  }

  final moneyBank1 = Bank(40, "12");
  final moneyBank2 = Bank(30, "12");

  print(moneyBank1 == moneyBank2);

  // müsteri banka sinifindan iki kisinin parasını toplayip ssonucu söylermisin

  print(moneyBank1 + moneyBank2);

  // benim bankama gelen müsterimin idsi aynı olanlar aynı müsteri olmalidir
  print(moneyBank1.toString());
  print(moneyBank1 == moneyBank2);
}

class _User {
  final String name;
  int? age;

  dynamic moneyType;

  _User(this.name,
      {this.age}); //{}dalgalı parantezi kullanma amacı opsyonellik katmakdır

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
  // burdaki sorun ise ilk soruya hangisini cevap olarak verirse geri kalanındada o seceneği kullancaktır
}

class Bank {
  final int money;
  final String id;

  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return this.money + newBank.money;
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString() + "veli";
  }

  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  }
}
