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
      home: buildHomePage('Ayana Kue'),
      title: 'Review Rating UI',
    );
  }

  // pisahin widget dari return MaterialApp biar bisa bikin lagi.

  Widget buildHomePage(String title) {
    const titleText = Padding(
      padding: EdgeInsets.all(24.0),
      child: Text(
        'Kue Manis Ayana',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 28,
        ),
      ),
    );

    const subTitle = Text(
      'Ayana Shahab is a meringue-based dessert named after the Russian ballerina '
      'Anna Ayana Shahab. Ayana Shahab features a crisp crust and soft, light inside, '
      'topped with fruit and whipped cream.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
      ),
    );

    // buat bintang
    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );

    // buat rating nya
    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

    const descTextStyle = TextStyle(
      color: Colors.black,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w800,
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    // (bikin Icon) & DefaultTextStyle.merge() allows you to create a default text for style inherited child and and all subsequent children.
    final iconList = DefaultTextStyle(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    ); //iconlist

    // taruh data widget & variabel nya disini- halaman kiri
    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(45, 30, 36, 5),
      child: Column(
        children: [
          titleText,
          subTitle,
          ratings,
          iconList,
        ],
      ),
    );

    final mainImage = Image.asset(
      'images/food.jpg',
      fit: BoxFit.cover,
    );

    // BAGIAN UTAMA
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(30, 40, 30, 40),
          height: 600,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // sisi kiri halaman utama di kiri
                SizedBox(
                  width: 500,
                  child: leftColumn,
                ),
                // gambar utama di page utama di kana
                mainImage,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
