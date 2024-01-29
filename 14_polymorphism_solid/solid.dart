void main() {}

class UserManager {
  String name;

  UserManager({
    required this.name,
  });

  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);

  void updateNameAndLocalizaiton() {
    manager.changeUserName("a");
    changeLocalizaiton();
  }

  void changeLocalizaiton() {
    print("aab");
  }
}

// Open closed Principle (OSP)
class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {
  ProductCategories(String name, String money) : super(name, money);

  final String category = ";L";
}
