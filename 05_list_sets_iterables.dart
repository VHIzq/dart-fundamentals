void main() {
  final numbers = [1,2,3,4,5,4,5,6,7,8,1,6,7,9,9];

  print('Original list $numbers');
  print('Length list ${numbers.length}');
  print('First Index: ${numbers.first}');
  print('Last Index: ${numbers.last}');
  print('Index ${numbers[0]}');
  print('Reversed: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable $reversedNumbers');
  print('List ${reversedNumbers.toList()}');
  print('Set ${reversedNumbers.toSet()}');

  final numbersGreaterThan5 = numbers.where((int element) => element > 5);
  print('Greater than five:  ${numbersGreaterThan5.toSet()}');
}