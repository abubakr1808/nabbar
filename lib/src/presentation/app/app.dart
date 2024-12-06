import 'package:flutter/material.dart';
import 'package:nabbar/src/presentation/home_page/home_pages_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: HomePage(),
    );
  }
}
