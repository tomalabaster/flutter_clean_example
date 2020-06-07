import 'package:flutter/foundation.dart';

abstract class HomeScreenEvent {}

class HomeScreenChangeTabEvent extends HomeScreenEvent {
  final int index;

  HomeScreenChangeTabEvent({@required this.index});

  @override
  String toString() => "HomeScreenChangeTabEvent to ${this.index}";
}

class HomeScreenTabChangedEvent extends HomeScreenEvent {
  final int index;

  HomeScreenTabChangedEvent({@required this.index});
}
