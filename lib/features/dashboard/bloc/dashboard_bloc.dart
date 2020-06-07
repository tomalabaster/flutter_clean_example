import 'package:bloc/bloc.dart';
import 'package:flutter_clean_example/features/dashboard/bloc/dashboard_event.dart';
import 'package:flutter_clean_example/features/dashboard/bloc/dashboard_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  

  @override
  DashboardState get initialState => DashboardState(someValue: 0);

  @override
  Stream<DashboardState> mapEventToState(DashboardEvent event) async* {}
}
