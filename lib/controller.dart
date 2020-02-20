import 'package:mobx/mobx.dart';

class Controller {
  //Observador | Observable
  var _counter = Observable(0);
  int get counter => _counter.value;
  set counter(int value) => _counter.value = value;

  //Ação | Action
  Action increment;

  Controller() {
    increment = Action(_increment);

    //Reação | Reaction
    autorun((_) {
      print(counter);
    });
  }

  _increment() {
    counter++;
  }
}
