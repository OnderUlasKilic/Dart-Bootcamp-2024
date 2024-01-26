// adı olmak zorunda
// parası olmak zorunda
// yasini vermeyebilir
// city olmak zorunda değil
// city yokse ist say
// id değişgenine sadece bu sinif içinden erisilebilsin

class User {
// özellikleri neler
  final String _id;
  final String name;
  final String userCode;
  int money;
  final int? age;
  final String? city;

  User(this.name, this.money, {this.age, this.city, required String id})
      : _id = id,
        userCode = (city ?? "istanbul") + " " + name;

  // orta iyi -> (city == null ? "istanbul" : city) + " " + name;

  // User(String name, int money, {required String id, int? age, String? city}) {
  //   this.name = name;
  //   this.money = money;
  //   this.age = age;
  //   this.city = city;
  //   _id = id;
  //   userCode = (city ?? "istanbul") + " " + name;
  // }

  bool isSpecialUser(String id) {
    return _id == id;
  }

  // bool isEmptyId() {
  //   return _id.isEmpty;
  // }

  bool get isEmptyId => _id.isEmpty;
}
