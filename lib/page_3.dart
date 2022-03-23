import 'package:flutter/material.dart';

class ImageMaps extends StatelessWidget {
  const ImageMaps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image(image: AssetImage('assets/images/mapa.jpg')),
        ),
      ),
    );
  }
}
