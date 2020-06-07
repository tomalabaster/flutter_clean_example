import 'package:flutter/material.dart';
import 'package:flutter_clean_example/app/app_localizations.dart';
import 'package:flutter_clean_example/core/constants/app_theme.dart';
import 'package:flutter_clean_example/features/home_screen/components/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.delegate.supportedLocales,
      home: HomeScreen(),
    );
  }
}
