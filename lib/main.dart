import 'package:flutter/material.dart';
import 'package:task1/widgets/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: const DefaultTabController(
        length: 5,
        child: NavigationBarWidget(),
      ),
    );
  }
}
