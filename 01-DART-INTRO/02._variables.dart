void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  dynamic p = 'dynamy';

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $p
  """);

  final Map<String, dynamic> mapPokemon = {
    'name': 'Ditto',
    'hp': 100,
    'abilities': ['impostor'],
    'sprites': {1: 'front.png', 2: 'back.png'}
  };

  print(mapPokemon);
  print('Front ${ mapPokemon['sprites'][1] }');
  print('Back ${ mapPokemon['sprites'][2] }');


  final numbers = [1,2,3,4,5,6,7,8,9,10,1,3,4,10];
  print(numbers);
  print('length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first} - Last: ${numbers.last}');


  final reverseNumbers = numbers.reversed;
  print('Iterable: ${reverseNumbers}');
  print('List: ${reverseNumbers.toList()}');
  print('Set: ${reverseNumbers.toSet()}');

  final numbersGreaterThan5 = numbers.where((element) => element > 5);
  print(numbersGreaterThan5);
}