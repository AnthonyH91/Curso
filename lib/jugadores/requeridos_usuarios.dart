class Usuario {
  final String firstname;
  final String lastname;
  final String avatar;
  final String mail;
  final int id;
  bool favorito = false;

  Usuario({
    required this.firstname,
    required this.lastname,
    required this.avatar,
    required this.mail,
    required this.favorito,
    required this.id,
  });

  factory Usuario.fromMap(Map usuario) {
    return Usuario(
      firstname: usuario['first_name'],
      avatar: usuario['avatar'],
      mail: usuario['email'],
      lastname: usuario['last_name'],
      favorito: false,
      id: usuario['id'],
    );
  }
}



/* 
// To parse this JSON data, do
//
//     final reqres = reqresFromJson(jsonString);

import 'dart:convert';

Reqres reqresFromJson(String str) => Reqres.fromJson(json.decode(str));

String reqresToJson(Reqres data) => json.encode(data.toJson());

class Reqres {
  int page;
  int perPage;
  int total;
  int totalPages;
  List<Usuario> data;

  Reqres({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
  });

  factory Reqres.fromJson(Map<String, dynamic> json) => Reqres(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<Usuario>.from(json["data"].map((x) => Usuario.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Usuario {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  Usuario({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}
*/