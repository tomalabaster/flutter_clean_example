import 'package:flutter/foundation.dart';

class HomeScreenState {
  final int currentTabIndex;

  HomeScreenState({
    @required this.currentTabIndex,
  });

  HomeScreenState copyWith({
    @required int currentTabIndex,
  }) =>
      HomeScreenState(currentTabIndex: currentTabIndex ?? this.currentTabIndex);

  @override
  String toString() => "HomeScreenState ${this.currentTabIndex}";
}
