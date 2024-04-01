void main() {
  final String hero = 'Raven';
  final int hp = 280;
  final bool isHuman = true;
  final List<String> abilities = ['Fly', 'Psych', 'Invoke'];
  final sprites = <String>['Run', 'Fight'];
  print("""
Hero: $hero,
HP: ${hp/100},
Is Human: $isHuman,
Abilities: ${abilities.join('-')},
Sprite Animation Frames: $sprites
  """
  );
}