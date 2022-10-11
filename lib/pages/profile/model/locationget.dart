import 'dart:convert';

List<Location> locationFromJson(List list) =>
    List<Location>.from(list.map((e) => Location.fromJson(e)));

String locationToJson(List<Location> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Location {
  Location({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
