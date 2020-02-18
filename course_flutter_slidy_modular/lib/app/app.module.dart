import 'package:course_flutter_slidy_modular/app/app.controller.dart';
import 'package:course_flutter_slidy_modular/app/app.widget.dart';
import 'package:course_flutter_slidy_modular/app/pages/home/home.controller.dart';
import 'package:course_flutter_slidy_modular/app/pages/home/home.widget.dart';
import 'package:course_flutter_slidy_modular/app/pages/other/other.widget.dart';
import 'package:course_flutter_slidy_modular/app/pages/shared/repositories/poke.repository.dart';
import 'package:course_flutter_slidy_modular/app/pages/shared/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController(i.get<PokeRepository>())),
        Bind((i) => PokeRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),


      ];

  @override
  // TODO: implement routers
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/other', child: (_, args) => OtherPage()),

      ];

  @override
  // TODO: implement bootstrap
  Widget get bootstrap => AppWidget();
}
