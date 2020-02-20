import 'package:mobx/mobx.dart';

class Controller {
  //Observador | Observable
  var counter = Observable(0);

  //Ação | Action
  Action increment;

  Controller() {
    increment = Action(_increment);

    //Reação | Reaction
    autorun((_) {
      print(counter.value);
    });
  }

  _increment() {
    counter.value = counter.value + 1;
  }
}
