import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';
import 'home_page.dart';


class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) {
          return HomeController();
        }),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject.of();
}
