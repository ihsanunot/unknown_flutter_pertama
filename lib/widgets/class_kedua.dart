import 'package:flutter/material.dart';

class Ekspansi extends StatelessWidget {
  const Ekspansi({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: Image.asset('images/pic4.jpg')),
        Expanded(flex: 2, child: Image.asset('images/pic5.png')),
        Expanded(child: Image.asset('images/pic6.png')),
      ],
    );
  }
}
