class Signupmodel {
  String email = '';
  String firstName = '';
  String role = 'seeker';
  String password = '';

  Signupmodel(
      {required this.email,
      required this.firstName,
      required this.role,
      required this.password});

  Map<String, dynamic> tojson() => {
        "email": email,
        "first_name": firstName,
        "role": "seeker",
        "password": password
        
      };
}
