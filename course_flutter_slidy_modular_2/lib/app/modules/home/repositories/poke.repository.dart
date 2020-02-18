import 'package:course_flutter_slidy_modular_2/app/modules/home/models/poke.model.dart';
import 'package:dio/dio.dart';

class PokeRepository {
  final Dio dio;

  PokeRepository(this.dio);

  /** Get all Pokemons **/
  Future<List<PokemonModel>> getAllPokemons() async {
    var response = await dio.get('/pokemon');
    List<PokemonModel> list = [];

    for (var json in (response.data['results'] as List)) {
      PokemonModel model = PokemonModel(name: json['name']);
      list.add(model);
    }
    return list;
  }
}
