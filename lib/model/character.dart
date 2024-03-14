class Character {
  final String name;
  final String image;
  final String species;
  final String origin;
  final String status;

  Character(
      {required this.name,
      required this.image,
      required this.species,
      required this.origin,
      required this.status});

  Character.fromJson(Map<String, dynamic> json)
      : name = json["name"] as String,
        image = json["image"] as String,
        species = json["species"] as String,
        origin = json["origin"]["name"] as String,
        status = json["status"] as String;
}
