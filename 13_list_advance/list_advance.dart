void main(List<String> args) {
  final model = CarModel(
      category: CarModels.bmw,
      name: "bmw x5",
      money: 1412,
      isSecondHand: false);

  final carItems = [
    CarModel(
        category: CarModels.bmw,
        name: "bmw x5",
        money: 12,
        isSecondHand: false),
    CarModel(category: CarModels.toyota, name: "toyota 234234", money: 45),
    CarModel(
        category: CarModels.yamaha,
        name: "yamaha 3324",
        money: 44,
        isSecondHand: false),
    CarModel(category: CarModels.bmw, name: "bmw x5", money: 33),
    CarModel(
        category: CarModels.toyota,
        name: "toyota 0ye",
        money: 55,
        isSecondHand: false),
  ];
  final resultCount =
      carItems.where((Element) => Element.isSecondHand == true).length;
  print(resultCount);

  final newCar = CarModel(category: CarModels.bmw, name: "bmw x5", money: 33);
  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print("elimizde var");
  } else {
    print("patron yok alalım");
  }

  final resultBmwMore20 = carItems.where((element) {
    return element.category == CarModels.bmw && element.money > 20;
  }).join();

  print(resultBmwMore20);

  final CarNames = carItems.map((e) => e.name).join(", ");
  print(CarNames);

  bool isHaveCarMercedes = false;

  try {
    final merdecesCar = carItems
        .singleWhere((element) => element.category == CarModels.mercedes);
    print(merdecesCar);
    bool isHaveCarMercedes = true;
  } catch (e) {
    print("araba yok abi");
    bool isHaveCarMercedes = false;
  } finally {
    print("abi bu işlem agır oldu bir daha sorma $isHaveCarMercedes");
  }

  final index = carItems.indexOf(newCar);
  print(index);

  carItems.add(
      CarModel(category: CarModels.mercedes, name: "mercedes M5", money: 66));

  carItems.sort((first, second) => first.money.compareTo(second.money));

  print(carItems);
}

// benim bir arabalar sinifim olacak
// araların modeli , isim, parasi kesin olcak sehri olmayacak, ikinci el durumu eger müsteri soylemese
// her ürün ikinci el kabul edilecek

// benim 5 tane arabam olacak

// benim bu arabalarimin kac tanesi ikinci el
// yeni bir araba geldi bu bizde var gibi hissediyorum dogrumu

// bana bmw olan ve money 20 den büyük arabalarimizin ismini söylermisin

// ya acaba sadece isimleri yan yana gösterirmisin

// benim elimde mercedes varmı

// su yeni gele arabaya var demiştin kacıncı sirada söylermisin

// ya ben yeni araba aldım mercedes eklermisin

// bana arabalarımı kücükten büyüge dogru sıralarmısın

class CarModel {
  final CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;

  CarModel(
      {required this.category,
      required this.name,
      required this.money,
      this.city,
      this.isSecondHand = true});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return "$name - $money";
  }
}

enum CarModels { bmw, yamaha, toyota, mercedes }
