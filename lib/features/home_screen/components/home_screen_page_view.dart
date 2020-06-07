import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_example/features/dashboard/components/dashboard.dart';
import 'package:flutter_clean_example/features/home_screen/bloc/home_screen_bloc.dart';
import 'package:flutter_clean_example/features/home_screen/bloc/home_screen_event.dart';
import 'package:flutter_clean_example/features/home_screen/bloc/home_screen_state.dart';
import 'package:flutter_clean_example/features/messages/components/messages.dart';

class HomeScreenPageView extends StatefulWidget {
  @override
  _HomeScreenPageViewState createState() => _HomeScreenPageViewState();
}

class _HomeScreenPageViewState extends State<HomeScreenPageView> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();

    this._pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeScreenBloc, HomeScreenState>(
      condition: (oldState, newState) =>  newState.currentTabIndex != this._pageController.page.round(),
      listener: (context, state) {
        this._pageController.animateToPage(
              state.currentTabIndex,
              duration: Duration(milliseconds: 250),
              curve: Curves.easeIn,
            );
      },
      child: PageView(
        controller: this._pageController,
        children: [
          Dashboard(),
          Messages(),
        ],
        onPageChanged: (index) {
          BlocProvider.of<HomeScreenBloc>(context)
              .add(HomeScreenChangeTabEvent(index: index));
        },
      ),
    );
  }
}
