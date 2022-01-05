class People {
  String? name;
  String? homeworld;

  People({this.name, this.homeworld});

  factory People.fromJson(Map<String, dynamic> json) {
    return People(name: json['name'], homeworld: json['homeworld']);
  }

  Map<String, dynamic> toJson(dynamic people) {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = people['name'];
    data['homeworld'] = people['homeworld'];
    return data;
  }
}
