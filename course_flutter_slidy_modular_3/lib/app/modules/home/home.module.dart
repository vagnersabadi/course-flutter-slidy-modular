import 'package:course_flutter_slidy_modular_3/app/modules/home/home.controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:course_flutter_slidy_modular_3/app/modules/home/home.page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
