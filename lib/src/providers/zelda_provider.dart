import 'package:dio/dio.dart';
import 'package:zelda_api/src/model/monsters_model.dart';

class ZeldaProvider {
  final _url = 'https://botw-compendium.herokuapp.com/api/v2/category/monsters';
  final _http = Dio();

  Future<List<MonstersModel>> tomarMonstruos() async {
    final _response = await _http.get(_url);
    List<dynamic> _data = _response.data['data'];
    final listaMonster =
        _data.map((monster) => MonstersModel.fromJasonMap(monster)).toList();
    return listaMonster;
  }
}
