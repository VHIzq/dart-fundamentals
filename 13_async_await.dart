void main() async {
  print('Inicio del programa');

  try {final value =
      await httpGet('https://fernando-herrera.com/cursos').then((value) {
    print(value);
  });

  } catch(err) {
    print('Tenemos un problema Houston: $err');
  }


  print('Fin del programa');
}

Future httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2)); //Simula una carga
  throw 'Error en la peticion';
  //return 'Data recuperada de la API';
}
