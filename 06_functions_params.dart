void main() {
  print( greetEveryone() );
  print('Add ${addTwoNumbers(10, 20)}');

  print(greetPerson(name: 'VHMI', message: 'Are you'));
}

String greetEveryone() {
  return 'Hello Everyone';
}

String byeGuys() => 'Bye there';

int addTwoNumbers(int a,int b) =>  a + b;

int addTwoNewNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbersOptionals(int a, [int b = 0])  {
  /* b ??= 0;
  return a + b; */
  return a + b;
}

String greetPerson({required String name, String message = 'Hi'}) {
  return '$message, $name';
}