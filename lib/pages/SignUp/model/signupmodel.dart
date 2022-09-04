class Signupmodel {
  String email = '';
  String firstName = '';
  String role = '';
  String password = '';

  Signupmodel(
      {required this.email,
      required this.firstName,
      required this.role,
      required this.password});

  Map<String, dynamic> tojson() => {
        "email": email,
        "first_name": firstName,
        "role": role,
        "password": password
        
      };
}
