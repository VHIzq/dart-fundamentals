void main() {
  final terra = new Hero(name: 'Terra', power: 'Earth control');
  print(terra.power);
  print(terra);
}

class Hero {
  String name;
  String power;

  /* Hero(String pName, String pPower)
    : name = pName,
      power = pPower; */

    Hero({
      required this.name,
      this.power = 'No power'
      });

    @override
    String toString() {
      return '$name - $power';
    }
}
