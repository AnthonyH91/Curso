import 'package:flutter/material.dart';
import 'package:practicar_000/jugadores/requeridos_usuarios.dart';
import 'package:practicar_000/widgets/controlador.dart';

class PaginaFutbol extends StatelessWidget {
  PaginaFutbol({Key? key}) : super(key: key);
  Controlador miUsuario = Controlador();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info de Futbol'),
        centerTitle: true,
        leading: Container(),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              FutureBuilder(
                future: miUsuario.obtenerUsuarios(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return _Listausuarios(snapshot.data);
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/listviewjugfut');
                },
                child: const Text('Ver plantilla de jugadores'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                child: const Text('Atrás'),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          ),
        ),
      ),
    );
  }
}

class _Listausuarios extends StatelessWidget {
  final List<Usuario> usuarios;

  const _Listausuarios(this.usuarios);
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: usuarios.length, (BuildContext context, int i) { 
final user = usuarios[i];
      return ListTile(
        title:
      )
     },);
  }
}
