import 'package:course_flutter_slidy_modular/app/modules/home/home.controller.dart';
import 'package:course_flutter_slidy_modular/app/modules/home/home.widget.dart';
import 'package:course_flutter_slidy_modular/app/modules/home/repositories/poke.repository.dart';
import 'package:course_flutter_slidy_modular/app/shared/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<PokeRepository>())),
        Bind((i) => PokeRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),

      ];

  @override
  // TODO: implement routers
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];
}
