import 'package:flutter/material.dart';
import 'package:zelda_api/src/model/monsters_model.dart';

class DetallesMonsters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MonstersModel monsters =
        ModalRoute.of(context)!.settings.arguments as MonstersModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(monsters.name!),
      ),
      body: Column(
        children: [
          Image.network(
            monsters.image!,
            height: 200.0,
          ),
          Text(monsters.description!)
        ],
      ),
    );
  }
}
