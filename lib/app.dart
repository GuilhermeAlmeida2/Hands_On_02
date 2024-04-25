import 'package:flutter/material.dart';
import 'package:stateful_navigation_project/pages/home_page.dart';
import 'package:stateful_navigation_project/pages/second_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Statefull and Navigation Project',
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}
