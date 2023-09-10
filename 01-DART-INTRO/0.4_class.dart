void main() {
  final wolverine = new Hero(name: 'wol', power: 'power', isAlive: true);
  print(wolverine.toString());

  final ironman = new Hero(name: 'Tony stark', power: 'Money', isAlive: false);
  print(ironman.toString());

  final Map<String, dynamic> rawJson = {
    'name': 'Spiderman',
    'power': 'Trepar',
    'isAlive': true
  };
  final spiderman = new Hero.fromJson(rawJson);
  print(spiderman.toString());
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? "No name found",
        power = json['power'] ?? "No power found",
        isAlive = json['isAlive'] ?? "No isAlive found";

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? "YES" : "NO"}';
  }
}
