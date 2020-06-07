import 'package:flutter/widgets.dart';
import 'package:flutter_clean_example/app/app_localizations.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(AppLocalizations.of(context).dashboardTitle),
    );
  }
}
