import 'package:flutter/cupertino.dart';
import 'package:landmark_app/src/screens/home_screens.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Cupertino App',
      home: HomeScreen(),
    );
  }
}