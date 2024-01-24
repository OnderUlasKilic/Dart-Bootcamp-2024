void main() {
  final newProduct = Product.money;

  calculateMoney(Product.money ?? 0);

  // xx
  productNameChane();
  // xx
  calculateMoney(Product.money ?? 0);
}

void calculateMoney(int money) {
  if ((Product.money ?? 0) > 5) {
    print("5 tl daha ekledik");
    Product.incerementMoney(5);
    print(Product.money);
  }
}

void productNameChane() {
  Product.money = null;
}

class Product {
  static int? money = 10;

  static const companyName = "VB BANK";

  static void incerementMoney(int newMoney) {
    if (money != null) return;
    {
      money = money! + newMoney;
    }
  }
}
