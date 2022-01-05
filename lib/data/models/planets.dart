class Planet {
  String? name;
  int? diameter;
  String? climate;
  String? gravity;
  String? terrain;
  int? population;
  String? url;

  Planet(
      {this.name,
      this.diameter,
      this.climate,
      this.gravity,
      this.terrain,
      this.population,
      this.url});

  factory Planet.fromJson(Map<String, dynamic> json) {
    return Planet(
      name: json['name'],
      diameter: json['diameter'],
      climate: json["climate"],
      gravity: json["gravity"],
      terrain: json["terrain"],
      population: json["population"],
      url: json["url"],
    );
  }

  Map<String, dynamic> toJson(dynamic people) {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = people['name'];
    data['diameter'] = people['diameter'];
    data['climate'] = people['climate'];
    data['gravity'] = people['gravity'];
    data['terrain'] = people['terrain'];
    data['population'] = people['population'];
    data['url'] = people['url'];
    return data;
  }
}
