import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_example/features/home_screen/bloc/home_screen_bloc.dart';
import 'package:flutter_clean_example/features/home_screen/components/home_screen_bottom_navigation_bar.dart';
import 'package:flutter_clean_example/features/home_screen/components/home_screen_page_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeScreenBloc(),
      child: Scaffold(
        body: HomeScreenPageView(),
        bottomNavigationBar: HomeScreenBottomNavigationBar(),
      ),
    );
  }
}
