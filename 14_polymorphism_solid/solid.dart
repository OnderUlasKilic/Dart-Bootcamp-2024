void main() {
  IDatabase database = SQL();

  database = Mongo();
  database.write();
}

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

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

class Mongo extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

//

abstract class IUserOperation with IUserLocation, ILanguage {
  void write();
  void read();
  void delete();
}

abstract mixin class IUserLocation {
  void locationChange();
}

abstract mixin class ILanguage {
  void language();
}

class UserLocation extends IUserLocation {
  @override
  void locationChange() {
    // TODO: implement locationChange
  }
}

abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  final IphoneCameraRead iphoneCameraRead;

  DeviceCameraManager(this.iphoneCameraRead);
  @override
  void readQR() {}
}

class IphoneCameraRead extends ICameraManager {
  @override
  void readQR() {
    // TODO: implement readQR
  }
}
