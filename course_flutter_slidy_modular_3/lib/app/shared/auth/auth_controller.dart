import 'package:course_flutter_slidy_modular_3/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final IAuthRepository _authRepository = Modular.get();

  @observable
  FirebaseUser user;

  setUser(FirebaseUser value) => user = value;

// primeira coisa
  _AuthControllerBase() {
    _authRepository.getUser().then(setUser);
  }

  @action
  Future loginWinthGoogle() async {
    user = await _authRepository.getGoogleLogin();
  }

   @action
  Future logout() async {
    return _authRepository.getLogout();
    }
}
