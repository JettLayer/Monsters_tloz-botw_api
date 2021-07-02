class MonstersModel {
  int? id;
  String? name;
  String? locations;
  String? drops;
  String? image;

  MonstersModel({this.id, this.name, this.locations, this.drops, this.image});

  factory MonstersModel.fromJasonMap(Map<String, dynamic> data) =>
      MonstersModel(
        id: data['id'],
        name: data['name'],
        image: data['image'],
        locations: data['common_locations'],
        drops: data['drops'],
      );
}
