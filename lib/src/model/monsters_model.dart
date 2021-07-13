class MonstersModel {
  int? id;
  String? name;
  // List<Locations>? locations;
  // List<Drops>? drops;
  String? image;
  String? description;

  MonstersModel(
      {this.id,
      this.name,
      // this.locations,
      // this.drops,
      this.image,
      this.description});

  factory MonstersModel.fromJasonMap(Map<String, dynamic> data) =>
      MonstersModel(
        id: data['id'],
        name: data['name'],
        image: data['image'],
        // locations: data['common_locations']
        //     .map((locations) => Locations.fromMapJson(locations))
        //     .toList()
        //     .cast<Locations>(),
        // drops: data['drops']
        //     .map((drops) => Drops.fromMapJson(drops))
        //     .toList()
        //     .cast<Drops>(),
        description: data['description'],
      );
}

class Locations {
  String? loc;

  Locations({this.loc});

  factory Locations.fromMapJson(Map<String, dynamic> data) =>
      Locations(loc: data['common_locations']);
}

class Drops {
  String? dro;

  Drops({this.dro});

  factory Drops.fromMapJson(Map<String, dynamic> data) =>
      Drops(dro: data['drops']);
}
