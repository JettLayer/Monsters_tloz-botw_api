import 'package:get/get.dart';
import 'package:zelda_api/model/monsters_model.dart';
import 'package:zelda_api/providers/zelda_provider.dart';

class MonstersState extends GetxController {
  List<MonstersModel> monsters = [];
  final _monstersprovider = ZeldaProvider();
  int _pagina = 0;

  Future<void> tomarMonstruo() async {
    final monsterlist = await _monstersprovider.tomarMonstruos(_pagina);
    monsters.addAll(monsterlist);
    _pagina += 20;
    update();
  }
}
