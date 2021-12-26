import 'package:flutter/material.dart';

class ListviewJugBas extends StatelessWidget {
  ListviewJugBas({Key? key}) : super(key: key);

  List<Map> jugadores = [
    {
      'nombre': 'magic',
      'telefono': 1511151544,
    },
    {
      'nombre': 'carmelo',
      'telefono': 1589897545,
    },
    {
      'nombre': 'lebron',
      'telefono': 1521558784,
    },
    {
      'nombre': 'stephen',
      'telefono': 1525254544,
    },
    {
      'nombre': 'mc gregor',
      'telefono': 1512354879,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: jugadores.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(jugadores[index]['nombre']),
                    textColor: Colors.white,
                    subtitle: Text('${jugadores[index]['telefono']}'),
                    leading: CircleAvatar(
                      child: Text('$index'),
                    ),
                    trailing: Icon(Icons.sports_esports),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(
                      context, ModalRoute.withName('/paginabasket'));
                },
                child: const Text('Atrás'),
              ),
            ],
          ),
        ));
  }
}
