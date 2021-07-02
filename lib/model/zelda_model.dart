class Monsters {
  String? name;
  String? url;

  Monsters({this.name, this.url});

  factory Monsters.fromMapJson(Map<String, dynamic> data) =>
      Monsters(name: data['name'], url: data['url']);
}
