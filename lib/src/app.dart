import 'package:flutter/cupertino.dart';
import 'package:widgets_explorer_app/src/screens/home_screens.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Cupetino App',
      home: HomeScreen(),
    );
  }
}