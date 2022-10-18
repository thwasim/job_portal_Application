import 'dart:convert';

//---------------------------- Education level ----------------------------//

List<EducationLevel> educationLevelFromJson(List list) =>
    List<EducationLevel>.from(list.map((e) => EducationLevel.fromJson(e)));

String educationLevelToJson(List<EducationLevel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

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

//------------------Education Course ------------------//

List<EducationCourse> educationCourseFromJson(List list) =>
    List<EducationCourse>.from(list.map((e) => EducationCourse.fromJson(e)));

String educationCourseToJson(List<EducationCourse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EducationCourse {
  EducationCourse({
    this.id,
    this.name,
    this.level,
  });

  int? id;
  String? name;
  int? level;

  factory EducationCourse.fromJson(Map<String, dynamic> json) =>
      EducationCourse(
        id: json["id"],
        name: json["name"],
        level: json["level"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "level": level,
      };
}

//-------------------- Education Specialisation -----------------------------//

List<EducationSpecialisation> educationSpecialisationFromJson(List list) =>
    List<EducationSpecialisation>.from(
        list.map((e) => EducationSpecialisation.fromJson(e)));

String educationSpecialisationToJson(List<EducationSpecialisation> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EducationSpecialisation {
  EducationSpecialisation({
    this.id,
    this.name,
    this.course,
  });

  int? id;
  String? name;
  int? course;

  factory EducationSpecialisation.fromJson(Map<String, dynamic> json) =>
      EducationSpecialisation(
        id: json["id"],
        name: json["name"],
        course: json["course"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "course": course,
      };
}
