import 'package:flutter/material.dart';
import 'package:zelda_api/src/model/monsters_model.dart';
import 'package:zelda_api/src/providers/zelda_provider.dart';

class HomePage extends StatelessWidget {
  final _monsterProvider = ZeldaProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monster Data'),
      ),
      body: FutureBuilder(
        future: _monsterProvider.tomarMonstruos(),
        builder: (BuildContext context,
            AsyncSnapshot<List<MonstersModel>> snapShot) {
          final monsterList = snapShot.data;
          if (snapShot.hasData) {
            return ListView.builder(
                itemCount: monsterList!.length,
                itemBuilder: (BuildContext context, int i) {
                  final monsters = monsterList[i];
                  return _DisenoMonsters(monsters);
                });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

class _DisenoMonsters extends StatelessWidget {
  final MonstersModel monsters;
  _DisenoMonsters(this.monsters);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(monsters.name!),
      subtitle: Text('#${monsters.id}'),
      leading: Image.network(monsters.image!),
      onTap: () => Navigator.pushNamed(context, '/detalles_monsters',
          arguments: monsters),
    );
  }
}
