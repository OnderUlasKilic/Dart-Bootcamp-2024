Future<void> main() async {
  print("Hello World!");
  // 5 saniye bekle sonra gel hicbir müsteri alma
  // await Future.forEach([1, 2, 3, 4, 5, 6], (int element) async {
  //   await Future.delayed(Duration(seconds: 2));
  //   print("işlem bitti $element");
  // });
  // await Future.delayed(Duration(seconds: 2));
  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = dataAddBankMoney(55, 3);
  // bankMoneys.listen((event) {
  //   print(event);
  // });

  print(await bankMoneys.where((event) => event == 258).toList());

  print("ab");

  print("hello");
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print("hello2");
  });
  print("hello3");
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print("hello4");
  });
}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
    yield 5;
  }
  ;
}


// bir servise cevap sonradan gelecek
// matematik işlemleri zaman alabilir

// sync 