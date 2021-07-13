import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zelda_api/src/pages/detalles_monsters.dart';
import 'package:zelda_api/src/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tloz: Botw Api',
      initialRoute: '/home',
      routes: {
        '/home': (_) => HomePage(),
        '/detalles_monsters': (_) => DetallesMonsters(),
      },
    );
  }
}
