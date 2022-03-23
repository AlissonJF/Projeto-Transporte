import 'package:flutter/material.dart';
import 'package:untitled/sidebar.dart';
import 'package:untitled/page_2.dart';
import 'package:untitled/page_3.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  static const String _title = 'Achoo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: const Text('Só estava testando ele'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Ativou aqui oh')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text(_title),
                    ),
                    body: const Center(
                      child: MyStatefulWidget(),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Clica ali na seta será algo\nNo lado superior esquerdo há um Sidebar\nNessa bolinha aqui em baixo vai ficar o mapa',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Mapa'),
                ),
                body: const ImageMaps(),
              );
            },
          ));
        },
      ),
    );
  }
}
