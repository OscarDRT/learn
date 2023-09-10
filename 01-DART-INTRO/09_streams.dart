void main(List<String> args) {
  emitNumber().listen((event) {
    print('Steam value $event');
  });
}

Stream<int> emitNumber() {
  return Stream.periodic(const Duration(seconds: 1), ((computationCount) {
    return computationCount;
  })).take(5);
}
