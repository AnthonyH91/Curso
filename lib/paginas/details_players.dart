import 'package:flutter/material.dart';
import 'package:practicar_000/jugadores/requeridos_usuarios.dart';

class Detalle_Jugadores extends StatefulWidget {
  Detalle_Jugadores({Key? key}) : super(key: key);

  @override
  State<Detalle_Jugadores> createState() => _Detalle_JugadoresState();
}

class _Detalle_JugadoresState extends State<Detalle_Jugadores> {
  bool isFavourite = false;

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
                  Switch(
                    value: args.favorito,
                    onChanged: (bool value) {
                      setState(() {
                        args.favorito = value;
                      });
                    },
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
