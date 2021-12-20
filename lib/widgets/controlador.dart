import 'dart:convert';

import 'package:http/http.dart';
import 'package:practicar_000/jugadores/requeridos_usuarios.dart';

class Controlador {
  Future<Map> obtenerUsuarios() async {
    Client http = Client();
    Uri uri = Uri.parse('https://reqres.in/api/users?page=1');
    Response respuesta = await http.get(uri);
    Map mapa = jsonDecode(respuesta.body);
    return mapa;
  }
}

/*    final url =
        Uri.https('https://reqres.in/api/users?page=1', {'q': '{http}'});

    final response = await http.get(url);

    return reqresFromJson(response.body);*/
  

