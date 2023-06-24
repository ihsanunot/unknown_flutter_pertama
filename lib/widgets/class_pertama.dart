import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'For Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Layout'),
        ),
        body: const TigaFoto(),
      ),
    );
  }
}

class TigaFoto extends StatelessWidget {
  const TigaFoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: [
            Image.asset('images/pic1.jpg'),
            const Text('Foto 1'),
          ],
        ),
        Column(
          children: [
            Image.asset('images/pic2.jpg'),
            const Text('Foto 2'),
            Row(
              children: [
                Icon(Icons.star, color: Colors.green[500]),
                Icon(Icons.star, color: Colors.green[500]),
                Icon(Icons.star, color: Colors.green[500]),
                const Icon(Icons.star, color: Colors.black),
                const Icon(Icons.star, color: Colors.black)
              ],
            ),
          ],
        ),
        Column(
          children: [
            Image.asset('images/pic3.jpg'),
            const Text('Foto 3'),
          ],
        ),
      ],
    );
  }
}
