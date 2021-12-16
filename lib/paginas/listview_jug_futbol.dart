import 'package:flutter/material.dart';

class ListviewJugFut extends StatelessWidget {
  ListviewJugFut({Key? key}) : super(key: key);

  //final List jugadores = [
  //  'pepe',
  //  'papa',
  //  'pupu',
  //];

  List<Map> jugadores = [
    {
      'nombre': 'reuben',
      'telefono': 1511151544,
    },
    {
      'nombre': 'shimon',
      'telefono': 1589897545,
    },
    {
      'nombre': 'levi',
      'telefono': 1521558784,
    },
    {
      'nombre': 'iehuda',
      'telefono': 1525254544,
    },
    {
      'nombre': 'iosef',
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
                      context, ModalRoute.withName('/paginafutbol'));
                },
                child: const Text('Atrás'),
              ),
            ],
          ),
        ));
  }
}
