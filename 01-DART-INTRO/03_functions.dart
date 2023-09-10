void main() {
  print(greet());
  print(greetArrow());

  print('add: ${ add(1, 2) }');
  print('addOptionalNumber: ${ addOptionalNumber(1) }');

  print(greetName(name: 'Oscar'));

}

String greet() {
  return 'Hello';
}

String greetArrow() => 'Hello arrow';

int add(int a, int b)=> a + b;

int addOptionalNumber(int a, [int b = 0])=> a + b;

String greetName({ required String name, String message = 'Hola,'}) {
  return "$message $name";
}