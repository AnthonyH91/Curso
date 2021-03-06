import 'package:flutter/material.dart';
import 'package:practicar_000/jugadores/requeridos_usuarios.dart';
import 'package:practicar_000/providers/jugadores_provider.dart';
import 'package:provider/provider.dart';

class PaginaFav extends StatelessWidget {
  PaginaFav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listados de Favoritos'),
        centerTitle: true,
        leading: Container(),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Consumer<JugadorProvider>(
                builder: (BuildContext context, data, _) {
                  //consumer de tipo jugadorProvider
                  List<Widget> widgetUsers = data.users.map((Usuario usuario) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: data.listadoFavoritos.contains(usuario.id)
                            ? ListTile(
                                leading: Icon(
                                  Icons.verified_user,
                                  color:
                                      data.listadoFavoritos.contains(usuario.id)
                                          ? Colors.red
                                          : Colors.blueGrey,
                                ),
                                title: Text(usuario.firstname),
                                textColor: Colors.black,
                                trailing: FadeInImage.assetNetwork(
                                  image: usuario.avatar,
                                  placeholder: "assets/loading.gif",
                                  imageCacheWidth: 50,
                                  width: 50,
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/detalle_jugadores',
                                    arguments: usuario,
                                  );
                                },
                              )
                            : null);
                  }).toList();

                  return Expanded(
                    child: ListView(
                      children: widgetUsers,
                    ),
                  );
                },
              ),
              /*ElevatedButton(
                onPressed: () {
                  //Navigator.pushNamed(context, '/listviewjugbas');
                },
                child: const Text('Ver plantilla de jugadores'),
              ),*/
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                child: const Text('Atr??s'),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          ),
        ),
      ),
    );
  }
}
