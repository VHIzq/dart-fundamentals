void main() {
  print('Inicio del programa');

  httpGet('https://fernando-herrera.com/cursos')
    .then((value) {
    print(value);
  })
  .catchError((err) {
    print('Error: $err');
  });

  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 2),() {
    throw 'Error en la peticion http';
  //  return 'Respuesta de la peticion http';
  });
}