import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  //Observador | Observable
  @observable
  int counter = 0;

  //Ação | Action
  @action
  increment() {
    counter++;
  }
}
