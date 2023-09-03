// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
    List<User>? user;

    Welcome({
        this.user,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        user: json["users"] == null ? [] : List<User>.from(json["users"]!.map((x) => User.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "users": user == null ? [] : List<dynamic>.from(user!.map((x) => x.toJson())),
    };
}

class User {
    int? id;
    String? fullname;
    String? email;
    String? password;
    String? gender;

    User({
        this.id,
        this.fullname,
        this.email,
        this.password,
        this.gender,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        fullname: json["Fullname"],
        email: json["email"],
        password: json["password"],
        gender: json["gender"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "Fullname": fullname,
        "email": email,
        "password": password,
        "gender": gender,
    };
}
