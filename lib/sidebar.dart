import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            child: Text(
              'Menuzinho',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(leading: Icon(Icons.settings), title: Text('Configurações')),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Fechar'),
          ),
        ],
      ),
    );
  }
}
