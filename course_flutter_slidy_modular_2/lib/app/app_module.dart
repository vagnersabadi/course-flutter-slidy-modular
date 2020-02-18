import 'package:course_flutter_slidy_modular_2/app/modules/login/login_module.dart';
import 'package:course_flutter_slidy_modular_2/app/pages/splash/splash_controller.dart';
import 'package:course_flutter_slidy_modular_2/app/app_bloc.dart';
import 'package:course_flutter_slidy_modular_2/app/modules/home/home.module.dart';
import 'package:course_flutter_slidy_modular_2/app/pages/splash/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:course_flutter_slidy_modular_2/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
        Bind((i) => AppBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SplashPage()),
        Router('/login', module: LoginModule()),
        Router('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
