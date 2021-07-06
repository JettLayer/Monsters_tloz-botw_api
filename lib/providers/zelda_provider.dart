import 'package:dio/dio.dart';
import 'package:zelda_api/model/monsters_model.dart';

class ZeldaProvider {
  final _url = 'https://botw-compendium.herokuapp.com/api/v2/category/monsters';
  final _http = Dio();

  Future<List<MonstersModel>> tomarMonstruos(int pagina) async {
    List<MonstersModel> _monsters = [];
    final _response = await _http.get(_url);
    List<dynamic> _data = _response.data['results'];
    for (int i = 0; i < _data.length; i++) {
      final responseMonster = await _http.get(_data[i]['url']);
      _monsters.add(MonstersModel.fromJasonMap(responseMonster.data));
    }
    return _monsters;
  }
}
