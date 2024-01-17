void main() {
  int money = 5;

  money = money + 1;

  money += 1;
  money++;
  money--;

  String name = "veli";
  String lastName = "bacık";

  print(name + lastName);

  if (name == "veli") ;
  if (name != "veli") ;
  if (name.length > "veli".length) ;
  if (name.length < "veli".length) ;
  if (name.length >= "veli".length) ;
  if (name.length <= "veli".length) ;

  const int appleMoney = 20;
  const double disccount = 2.5;

  int myMoney = 30;

  myMoney = myMoney - (appleMoney ~/ disccount);
  print(myMoney);

  print(myMoney % 2 == 0);
  print(myMoney.isOdd);
  print(myMoney.isEven);
}
