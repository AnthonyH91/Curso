import 'package:flutter/material.dart';
import 'package:practicar_000/pagina_principal.dart';
import 'package:practicar_000/paginas/listview_jug_futbol.dart';
import 'package:practicar_000/paginas/listview_jug_basket.dart';
import 'package:practicar_000/paginas/paginaBasket.dart';
import 'package:practicar_000/paginas/paginaFutbol.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto 000',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      debugShowCheckedModeBanner: false,
      //home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/paginafutbol': (context) => const PaginaFutbol(),
        '/paginabasket': (context) => const PaginaBasket(),
        '/listviewjugfut': (context) => ListviewJugFut(),
        '/listviewjugbas': (context) => ListviewJugBas(),
      },
    );
  }
}
