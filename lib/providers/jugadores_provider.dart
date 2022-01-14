import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:practicar_000/jugadores/requeridos_usuarios.dart';
import 'package:shared_preferences/shared_preferences.dart';

class JugadorProvider extends ChangeNotifier {
  final List<Usuario> _users = [];
  List<Usuario> get users => _users;

  List<int> _listadoFavoritos = [];
  List<int> get listadoFavoritos => _listadoFavoritos;

  agregarEliminarUsuarioFavoritos(int idUsuario) {
    if (_listadoFavoritos.contains(idUsuario) == true) {
      _listadoFavoritos.remove(idUsuario);
    } else {
      _listadoFavoritos.add(idUsuario);
    }
    notifyListeners();
  }

  Future obtenerUsuarios() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String datosAlmacenados;

    try {
      Client http = Client();
      Uri uri = Uri.parse('https://reqres.in/api/users?page=2');
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
    //inyectamos los usuarios dentro de provider
    _users.clear();
    _users.addAll(listaDeJugadores);
    notifyListeners();
    //return listaDeJugadores;
  }
}
