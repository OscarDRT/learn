void main(List<String> args) {
  emitNumber().listen((int event) {
    print('Strem value: $event');
  });
}

Stream<int> emitNumber() async* {
  final valuesToemit = [1, 2, 3, 4, 5];

  for (int i in valuesToemit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
