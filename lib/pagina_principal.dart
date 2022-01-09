// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practicar_000/jugadores/requeridos_usuarios.dart';
import 'package:practicar_000/widgets/chip.dart';
import 'package:practicar_000/widgets/drawer.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String? deporte = "";

  late String? raiz = "assets/deportes.jpg";

  @override
  Widget build(BuildContext context) {
    late final Usuario args =
        ModalRoute.of(context)?.settings.arguments as Usuario;
    return Scaffold(
      drawer: DrawerDisen(),
      appBar: AppBar(title: Text("Mi Deporte"), actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                deporte = "Futbol";
                raiz = 'assets/futbol.jpg';
                setState(() {});
              },
              icon: Icon(Icons.sports_soccer),
            ),
            IconButton(
                onPressed: () {
                  deporte = "Basket";
                  raiz = 'assets/basket.jpg';
                  setState(() {});
                },
                icon: Icon(Icons.sports_basketball)),
            PopupMenuButton(itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(child: Text("Tennis")),
                const PopupMenuItem(child: Text("Rugby")),
                const PopupMenuItem(child: Text("Voley")),
                const PopupMenuItem(child: Text("Mas")),
              ];
            }),
          ],
        )
      ]),
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "$deporte",
                  style: const TextStyle(fontSize: 26.0, color: Colors.white),
                ),
                GestureDetector(
                  child: Image.asset('$raiz'),
                  onDoubleTap: () =>
                      Navigator.pushNamed(context, '/listviewjugfut'),
                ),
                const ChipDisen(),
              ]),
        ),
      ),
    );
  }
}
