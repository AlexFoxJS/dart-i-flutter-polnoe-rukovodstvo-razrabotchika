class Person {
  String firstName;

  printName() {
    print(firstName);
  }
}

void main() {
  var person = new Person();

  person.firstName = 'Alex';
  person.printName();
}
