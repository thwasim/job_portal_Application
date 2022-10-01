class EducationLevelModel {
  String title = '';

  EducationLevelModel({required this.title});

  Map<String, dynamic> tojson() => {"title": title};
}
