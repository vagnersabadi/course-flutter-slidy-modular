import 'package:course_flutter_slidy_modular/app/app.controller.dart';
import 'package:course_flutter_slidy_modular/app/app.widget.dart';
import 'package:course_flutter_slidy_modular/app/modules/home/home.controller.dart';
import 'package:course_flutter_slidy_modular/app/modules/home/home.module.dart';
import 'package:course_flutter_slidy_modular/app/modules/home/home.widget.dart';
import 'package:course_flutter_slidy_modular/app/modules/home/repositories/poke.repository.dart';
// import 'package:course_flutter_slidy_modular/app/pages/other/other.widget.dart';
import 'package:course_flutter_slidy_modular/app/shared/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  // TODO: implement routers
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        // Router('/', child: (_, args) => HomePage()),
        // Router('/other', child: (_, args) => OtherPage()),
      ];

  @override
  // TODO: implement bootstrap
  Widget get bootstrap => AppWidget();
}
