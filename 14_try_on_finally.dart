void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://fernando-herrera.com/cursos').then((value) {
    print(value);
  });

  } on Exception catch(err) {
    print('Tenemos una Exception: $err');
  }

   catch(err) {
    print('Tenemos un problema grave Houston: $err');
  } finally {
    print('Fin del try-cath');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2)); //Simula una carga
  throw Exception('Error en la peticion');
  //throw 'Error en la conexio del internet'
  //return 'Data recuperada de la API';
}