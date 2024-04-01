void main() {

  final hero = {
    'name': 'Superman',
    'age': 32,
    'powers': ['super strength', 'fly', 'laser eyes']
  };

  print(hero['name']);

  final heroes = {
    1: 'Robin',
    2: 'Starfire',
    3: 'Raven',
    4: 'Beast Boy',
    5: 'Cyborg',
    'power team': 780,
    'leaders': {
      1: 'Robin',
      2: 'Cyborg'
    }
  };

  print(heroes['leaders']);
}