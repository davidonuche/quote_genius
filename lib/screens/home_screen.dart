import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quote_genius/screens/quote_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/image/QuoteGenius.png"),
                  ),
                  const SizedBox(width: 50),
                  Text("Quote Genius",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 50),
              Container(
                child: Text("Random Quote",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 90),
              ElevatedButton(
                onPressed: () {
                  final random = Random();
                  final index = random.nextInt(quotes.length);
                  final quote = quotes[index];
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(quote.text),
                          content: Text('- ${quote.author}'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Ok"),
                            ),
                          ],
                        );
                      });
                },
                child: Text("Get Quote"),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuoteScreen(),
                        ));
                  },
                  child: Text("View All Quotes")),
            ],
          ),
        ));
  }
}