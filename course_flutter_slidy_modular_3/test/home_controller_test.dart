import 'package:course_flutter_slidy_modular_3/app/app_module.dart';
import 'package:course_flutter_slidy_modular_3/app/modules/home/home_controller.dart';
import 'package:course_flutter_slidy_modular_3/app/modules/home/home_module.dart';
import 'package:course_flutter_slidy_modular_3/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:course_flutter_slidy_modular_3/app/shared/repositories/localstorage/local_storage_mock.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

main() {
  initModule(AppModule(), changeBinds: [
    // chama o mock inves do LocalStorageShared
    Bind<ILocalStorage>((i) => LocalStorageMock()),
  ]);
  initModule(HomeModule());

  // SAVE
  test('click save', () async {
    final HomeController controller = Modular.get();
    controller.textController.text = 'vagner';
    controller.save();
    expect(controller.list.length, 1);
    expect(controller.list[0], 'vagner');
    
    List<String> listStorage = await Modular.get<ILocalStorage>().get('key');
    expect(listStorage[0], 'vagner');

  });

  // REMOVE
  test('click remove', () async {
    final HomeController controller = Modular.get();
    controller.textController.text = 'vagner';
    controller.save();
    controller.remove(0);
    expect(controller.list.length, 0);
 
    List<String> listStorage = await Modular.get<ILocalStorage>().get('key');
    expect(listStorage.isEmpty, true);

  });
}
