// adı olmak zorunda
// parası olmak zorunda
// yasini vermeyebilir
// city olmak zorunda değil
// city yokse ist say
// id değişgenine sadece bu sinif içinden erisilebilsin

class User {
// özellikleri neler

  late final String name;
  late int money;
  late final int? age;
  late final String? city;

  late final String userCode;

  late final String _id;

  User(String name, int money, {required String id, int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;
    userCode = (city ?? "istanbul") + " " + name;
  }
  bool isSpecialUser(String id) {
    return _id == id;
  }

  // bool isEmptyId() {
  //   return _id.isEmpty;
  // }

  bool get isEmptyId => _id.isEmpty;
}
