import 'package:flutter/material.dart';
import 'package:last_homework/presentation/screens/deteailed_screen.dart';
import 'package:last_homework/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        DetailedScreen.routeName: (context) => const DetailedScreen(),
      },
      home: const HomePage(),
    );
  }
}
