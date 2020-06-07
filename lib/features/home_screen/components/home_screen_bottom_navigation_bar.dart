import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_example/features/home_screen/bloc/home_screen_bloc.dart';
import 'package:flutter_clean_example/features/home_screen/bloc/home_screen_event.dart';
import 'package:flutter_clean_example/features/home_screen/bloc/home_screen_state.dart';

class HomeScreenBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state.currentTabIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              title: Text('Dashboard'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text('Messages'),
            ),
          ],
          onTap: (index) {
            BlocProvider.of<HomeScreenBloc>(context)
                .add(HomeScreenChangeTabEvent(index: index));
          },
        );
      },
    );
  }
}
