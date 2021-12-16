// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:practicar_000/paginas/paginaBasket.dart';
import 'package:practicar_000/paginas/paginaFutbol.dart';

class DrawerDisen extends StatelessWidget {
  const DrawerDisen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.green),
      child: Drawer(
          child: ListView(
        children: [
          buildDrawerHeader(context),
          ListTile(
            title: Text('Futbol'),
            onTap: () {
              Navigator.pushNamed(context, '/paginafutbol');
              //Navigator.of(context).push(
              //MaterialPageRoute(builder: (context) => PaginaFutbol()),
              //);
            },
          ),
          ListTile(
            title: Text('Basket'),
            onTap: () {
              Navigator.pushNamed(context, '/paginabasket');

              //Navigator.of(context).push(
              //  MaterialPageRoute(builder: (context) => PaginaBasket()),
              //);
            },
          ),
          ListTile(
            title: Text('Rugby'),
            onTap: () {},
          ),
        ],
      )),
    );
  }

  UserAccountsDrawerHeader buildDrawerHeader(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text('Anthony'),
      accountEmail: Text('anthonyhanono@gmail.com'),
      currentAccountPicture: GestureDetector(
        child: CircleAvatar(
          child: FlutterLogo(
            size: 42.0,
          ),
        ),
      ),
    );
  }
}
