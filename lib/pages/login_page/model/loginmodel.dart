class Loginmodel {
  String? email = '';
  String? password = '';
  String? role = 'seeker';
  String? tocken;
  num? id;

  Loginmodel({this.role, this.email, this.password, this.tocken, this.id});

  Map<String, dynamic> tojson() =>
      {"email": email, "password": password, "role": "seeker"};

  factory Loginmodel.fromJson(Map<String, dynamic> json) => Loginmodel(
        tocken: json['token']['access'],
        id: json['user']['user_id'],
      );
}
