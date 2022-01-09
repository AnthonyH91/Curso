import 'package:flutter/material.dart';
import 'package:practicar_000/pagina_principal.dart';
import 'package:practicar_000/paginas/details_players.dart';
import 'package:practicar_000/paginas/jugar.dart';
import 'package:practicar_000/paginas/listview_jug_futbol.dart';
import 'package:practicar_000/paginas/listview_jug_basket.dart';
import 'package:practicar_000/paginas/paginaBasket.dart';
import 'package:practicar_000/paginas/paginaFutbol.dart';
import 'package:practicar_000/paginas/paginaFavoritos.dart';
import 'package:practicar_000/providers/jugadores_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //creo la instancia al sujeto que emite estado
      create: (BuildContext context) => JugadorProvider(),
      child: MaterialApp(
        title: 'Proyecto 000',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        debugShowCheckedModeBanner: false,
        //home: MyHomePage(),
        initialRoute: '/',
        routes: {
          '/': (context) => MyHomePage(),
          '/paginafutbol': (context) => PaginaFutbol(),
          '/paginabasket': (context) => PaginaBasket(),
          '/paginafavoritos': (context) => PaginaFav(),
          '/listviewjugfut': (context) => ListviewJugFut(),
          '/listviewjugbas': (context) => ListviewJugBas(),
          '/detalle_jugadores': (context) => Detalle_Jugadores(),
          '/juegoChips': (context) => jugandoChips(),
        },
      ),
    );
  }
}
