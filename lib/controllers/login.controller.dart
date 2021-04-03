import 'package:mobx/mobx.dart';
import 'package:pets_app/models/customer.model.dart';
import 'package:pets_app/viewmodels/login.viewmodels.dart';
part 'login.controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final LoginViewModel viewModel = LoginViewModel();
}
