import 'dart:convert';
import 'package:http/http.dart';
import 'package:practicar_000/jugadores/requeridos_usuarios.dart';

class Controlador {
  Future<List<Usuario>> obtenerUsuarios() async {
    Client http = Client();
    Uri uri = Uri.parse('https://reqres.in/api/users?page=1');
    Response respuesta = await http.get(uri);
    Map mapa = jsonDecode(respuesta.body);

    List usuarios = mapa['data'];
    List<Usuario> listaDeJugadores =
        usuarios.map((jugador) => Usuario.fromMap(jugador)).toList();
    return listaDeJugadores;
  }
}
