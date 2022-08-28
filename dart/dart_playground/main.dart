import 'dart:async';

void main(List<String> args) {
  A eu1 = A();
  eu1.printName();

  B eu2 = B();

  eu2.printName();
}

class A {
  void printName() {
    print('Meu nome é carol');
  }
}

class B extends A {
  @override
  void printName() {
    // TODO: implement printName
    super.printName();
  }
}
