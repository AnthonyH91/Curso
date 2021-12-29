import 'dart:convert';
import 'package:http/http.dart';
import 'package:practicar_000/jugadores/requeridos_usuarios.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Controlador {
  Future<List<Usuario>> obtenerUsuarios() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String datosAlmacenados;

    try {
      Client http = Client();
      Uri uri = Uri.parse('https://reqres.in/api/users?page=1');
      Response respuesta = await http.get(uri);
      prefs.setString('datos', respuesta.body); //guarda de forma local
      datosAlmacenados = respuesta.body;
    } catch (e) {
      datosAlmacenados = prefs.getString('datos')!;
    }

    Map mapa = jsonDecode(datosAlmacenados);

    List usuarios = mapa['data'];
    List<Usuario> listaDeJugadores =
        usuarios.map((jugador) => Usuario.fromMap(jugador)).toList();
    return listaDeJugadores;
  }
}
