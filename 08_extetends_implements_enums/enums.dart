void main() {
  final customerMouse = Mouses.a4;

  print(customerMouse.index);

  print(customerMouse.name);

  // switch (customerMouse) {
  //   case Mouses.magic:
  //   // TODO: Handle this case.
  //   case Mouses.apple:
  //   // TODO: Handle this case.
  //   case Mouses.logitech:
  //   // TODO: Handle this case.
  //   case Mouses.a4:
  //   // TODO: Handle this case.
  // }

  if (customerMouse == Mouses.a4) {}

  if (customerMouse.name == "a4") {}
  if (customerMouse.isCheckName("a4")) ;
  print("aa");
}

enum Mouses {
  magic,
  apple,
  logitech,
  a4,
}

extension MousesSelectedExtension on Mouses {
  bool isCheckName(String name) {
    return this.name == name;
  }
}
