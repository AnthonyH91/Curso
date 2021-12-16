import 'dart:convert';

import 'package:http/http.dart';
import 'package:practicar_000/jugadores/requeridos_usuarios.dart';

class Controlador {
  Future<Reqres> obtenerUsuarios() async {
    Client http = Client();

    final url =
        Uri.https('https://reqres.in/api', '/users?page=1', {'q': '{http}'});

    final response = await http.get(url);

    return reqresFromJson(response.body);
  }
}
