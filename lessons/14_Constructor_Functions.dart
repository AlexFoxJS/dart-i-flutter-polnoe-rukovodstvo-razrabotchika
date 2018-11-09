class Person {
  String firstName;

  Person(this.firstName);

  printName() {
    print(firstName);
  }
}

void main() {
  var person = new Person('Alex');

  person.printName();
}
