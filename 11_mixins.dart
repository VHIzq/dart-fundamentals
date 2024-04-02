abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

 mixin Volar {
  void volando() => print('Estoy volando');
}

 mixin Caminar {
  void caminando() => print('Estoy caminando');
}
 mixin Nadar {
  void nadando() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadar {

}
class Murcielado extends Mamifero with Volar, Caminar {

}
class Gato extends Mamifero with Caminar {

}

class Paloma extends Ave with Volar, Caminar {

}

class Pato extends Ave with Nadar, Caminar {

}

class Tiburo extends Pez with Nadar {

}

class PezVolador extends Pez with Nadar, Volar {

}

void main() {
  final flipper = Delfin();
  flipper.nadando();

  final batman = Murcielado();
  batman.volando();
  batman.caminando();
}