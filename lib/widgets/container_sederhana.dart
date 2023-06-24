import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Dasar'),
        ),
        body: Center(child: _buildImageColumn()),
      ),
    );
  }

// fungsi dasar nya
  Widget _buildImageColumn() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
      // biar bisa di scroll takut overflow
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildImageRow(1),
            _buildImageRow(3),
          ],
        ),
      ),
    );
  }

// Tempat taruh asal Gambar
  Widget _buildDecoratedImage(int imageIndex) => Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 10, color: Colors.black38),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          margin: const EdgeInsets.all(4),
          child: Image.asset(
              'images/pic$imageIndex.jpg'), // disini pic$imageIndx pic itu nama foto nya ditambah fungsi flutter
        ),
      );
  // nanti juga bisa buat format jpg/png/webp tapi nanti

// Logic nya buat gambar
  Widget _buildImageRow(int imageIndex) => Row(
        children: [
          _buildDecoratedImage(imageIndex),
          _buildDecoratedImage(imageIndex + 1),
        ],
      );
}
