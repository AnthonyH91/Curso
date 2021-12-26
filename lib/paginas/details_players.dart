import 'package:flutter/material.dart';
import 'package:practicar_000/jugadores/requeridos_usuarios.dart';

class Detalle_Jugadores extends StatelessWidget {
  Detalle_Jugadores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Usuario args = ModalRoute.of(context)?.settings.arguments as Usuario;
    return Scaffold(
        appBar: AppBar(),
        body: Card(
          child: Container(
            height: 150,
            child: Row(
              children: <Widget>[
                Image.network(args.avatar),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(args.firstname),
                    Text(args.lastname),
                    Text(args.mail),
                  ],
                ))
              ],
            ),
          ),
        ));
  }
}
