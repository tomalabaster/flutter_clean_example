import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_example/app/app.dart';
import 'package:flutter_clean_example/injector.dart';

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    print(transition.currentState);
    print(transition.event);
    print(transition.nextState);
  }
}

void main() {
  configureDependencies();

  BlocSupervisor.delegate = SimpleBlocDelegate();

  runApp(MyApp());
}
