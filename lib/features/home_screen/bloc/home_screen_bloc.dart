import 'package:bloc/bloc.dart';
import 'package:flutter_clean_example/features/home_screen/bloc/home_screen_event.dart';
import 'package:flutter_clean_example/features/home_screen/bloc/home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  @override
  HomeScreenState get initialState => HomeScreenState(currentTabIndex: 0);

  @override
  Stream<HomeScreenState> mapEventToState(HomeScreenEvent event) async* {
    if (event is HomeScreenChangeTabEvent) {
      yield this.state.copyWith(currentTabIndex: event.index);
    }
  }
}
