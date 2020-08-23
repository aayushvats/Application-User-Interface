import 'dart:convert';

//Storing the user data. without the use of getters though.

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User{
  String username, password, name, email;

  User({
    this.username,
    this.password,
    this.name,
    this.email,
  });

  factory User.fromJson(Map<String, dynamic> json ) => User(
      username: json["username"],
      password: json["password"],
      name: json["name"],
      email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
    "name": name,
    "email": email,
  };
}
