import 'dart:math';

import 'package:flutter/material.dart';
import 'package:practicar_000/jugadores/requeridos_usuarios.dart';
import 'package:practicar_000/providers/jugadores_provider.dart';
import 'package:provider/provider.dart';

class jugandoChips extends StatefulWidget {
  const jugandoChips({Key? key}) : super(key: key);

  @override
  State<jugandoChips> createState() => _jugandoChipsState();
}

class _jugandoChipsState extends State<jugandoChips> {
  int bomba = 1;
  int ganador = Random().nextInt(11);
  //int ganador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TAP AND WIN !!')),
      backgroundColor: Colors.teal,
      body: SafeArea(
        child:
            Consumer<JugadorProvider>(builder: (BuildContext context, data, _) {
          //consumer de tipo jugadorProvider
          List<Widget> widgetUsers = data.users.map((Usuario usuario) {
            return Padding(
                padding: const EdgeInsets.all(20.0),
                child: ActionChip(
                  label: Text(usuario.firstname),
                  onPressed: () {
                    if (ganador == 0) {
                      ganador++;
                    } else if (bomba == ganador) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(usuario.firstname),
                        action: SnackBarAction(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/detalle_jugadores',
                                arguments: usuario,
                              );
                            },
                            label: "Details"),
                      ));

                      Navigator.pushNamed(
                        context,
                        '/',
                        arguments: usuario,
                      );
                    } else {
                      bomba++;
                    }
                  },
                  avatar: Image.network(usuario.avatar),
                ));
          }).toList();

          return Stack(
            alignment: Alignment.centerLeft,
            children: [
              Positioned(
                child: ListView(
                  children: widgetUsers,
                ),
              ),
              //Text(ganador.toString()),
            ],
          );

          /*Expanded(
            
          );*/
        }),
      ),
    );
  }
}
