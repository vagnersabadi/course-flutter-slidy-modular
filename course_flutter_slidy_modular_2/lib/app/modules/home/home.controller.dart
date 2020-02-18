import 'package:course_flutter_slidy_modular_2/app/modules/home/repositories/poke.repository.dart';
import 'package:mobx/mobx.dart';
part 'home.controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PokeRepository repository;

  @observable
  ObservableFuture pokemons;

  _HomeControllerBase(this.repository) {
    pokemons = repository.getAllPokemons().asObservable();
    fetchPokemons();
  }

  @action
  fetchPokemons() {
    pokemons = repository.getAllPokemons().asObservable();
  }
}
