void main() {
  emitSeconds().listen((event) {
    print('Stream seconds: $event');
  });
}

Stream<int> emitSeconds() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    //print('Emitiendo segundos desde Stream $value');
    return value;
  }).take(5);
}