import 'package:flutter/material.dart';
import 'package:practicar_000/jugadores/requeridos_usuarios.dart';
import 'package:practicar_000/providers/jugadores_provider.dart';
import 'package:provider/provider.dart';

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
                  IconButton(
                    onPressed: () {
                      context
                          .read<JugadorProvider>()
                          .agregarEliminarUsuarioFavoritos(args.id);

                      /*context
                          .watch<JugadorProvider>()
                          .agregarEliminarUsuarioFavoritos();*/

                      /*Provider.of<JugadorProvider>(context, listen: false)
                          .agregarEliminarUsuarioFavoritos();*/
                    },
                    icon:
                        Consumer<JugadorProvider>(builder: (context, data, _) {
                      bool esFav = data.listadoFavoritos.contains(args.id);

                      return Icon(
                        // ignore: dead_code
                        esFav ? Icons.favorite : Icons.favorite_outline,
                        // ignore: dead_code
                        color: esFav ? Colors.red : Colors.black,
                        size: 50,
                      );
                    }),
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
