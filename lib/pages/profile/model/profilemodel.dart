import 'dart:convert';

UserProfileGet userProfileGetFromJson(String str) =>
    UserProfileGet.fromJson(json.decode(str));

String userProfileGetToJson(UserProfileGet data) => json.encode(data.toJson());

class UserProfileGet {
  UserProfileGet({
    this.firstName,
    this.email,
    this.city,
    this.phoneNumber,
    this.profileImage,
    required this.dob,
  });

  String? firstName;
  String? email;
  String? phoneNumber;
  String? profileImage;
  DateTime dob;
  String? city;

  factory UserProfileGet.fromJson(Map<String, dynamic> json) => UserProfileGet(
        firstName: json["first_name"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        profileImage: json["profile_image"],
        dob: DateTime.parse(json["dob"]),
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "email": email,
        "phone_number": phoneNumber,
        "city": city,
        "profile_image": profileImage,
        "dob":
            "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
      };
}
