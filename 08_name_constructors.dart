
void main() {
  final Map<String, dynamic> rawData = {
    'name': 'Raven',
    'power': 'Psych',
    'isAlive': true
  };


  /* final blueBettle = Hero(name: 'James', power: '280', isAlive: true);
  print(blueBettle); */

  final ironman = Hero.fromJson(rawData);
  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  Hero.fromJson( Map<String, dynamic> json)
    : name  = json['name'] ?? 'Not name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'Not is alive'


  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'Yes!' : 'No'}';
  }
  
}