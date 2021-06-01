import 'package:base_web_flutter/ui/pages/counter_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Base Web Flutter',
      debugShowCheckedModeBanner: false,
      initialRoute: '/stateful',
      routes: {
        '/stateful': (_) => CounterPage(),
      },
    );
  }
}
