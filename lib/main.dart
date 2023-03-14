// Project Name: QuoteGenius - Task given by mentor Akindele Michael
// Start Date: 8th Mar, 2023
// End Date: 15th Mar, 2023
// Developer: David O.

import 'package:flutter/material.dart';
import 'package:quote_genius/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quote Genius',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
