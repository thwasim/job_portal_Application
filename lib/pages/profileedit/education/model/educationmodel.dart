import 'dart:convert';

List<EducationLevel> educationLevelFromJson(String str) => List<EducationLevel>.from(json.decode(str).map((x) => EducationLevel.fromJson(x)));

String educationLevelToJson(List<EducationLevel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EducationLevel {
    EducationLevel({
        this.id,
        this.title,
    });

    int? id;
    String? title;

    factory EducationLevel.fromJson(Map<String, dynamic> json) => EducationLevel(
        id: json["id"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
    };
}
