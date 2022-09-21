class Loginmodel {
  String email = '';
  String password = '';

  Loginmodel(
    {
      required this.email,
      required this.password,
     }
     );

     Map <String ,dynamic> tojson ()=> {
       "email": email,
       "password": password,
     };
}
