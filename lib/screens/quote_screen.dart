import 'package:flutter/material.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        title: Text('All Quotes'),
      ),
      body: ListView.builder(
        itemCount: quotes.length,
        itemBuilder: (context, index) {
          final quote = quotes[index];
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
        },
      ),
    );
  }
}

class Quote {
  final String text;
  final String author;

  const Quote({
    required this.text,
    required this.author,
  });
}

final List<Quote> quotes = [
  Quote(
    text: 'Be the change you wish to see in the world.',
    author: 'Mahatma Gandhi',
  ),
  Quote(
    text: 'Stay hungry, stay foolish.',
    author: 'Steve Jobs',
  ),
  Quote(
    text: 'I have not failed. I\'ve just found 10,000 ways that won\'t work.',
    author: 'Thomas Edison',
  ),
  Quote(
    text: 'Be the change you wish to see in the world.',
    author: 'Mahatma Gandhi',
  ),
  Quote(
    text: 'Stay hungry, stay foolish.',
    author: 'Steve Jobs',
  ),
  Quote(
    text: 'I have not failed. I\'ve just found 10,000 ways that won\'t work.',
    author: 'Thomas Edison',
  ),
  Quote(
    text: 'Be the change you wish to see in the world.',
    author: 'Mahatma Gandhi',
  ),
  Quote(
    text: 'Stay hungry, stay foolish.',
    author: 'Steve Jobs',
  ),
  Quote(
    text: 'I have not failed. I\'ve just found 10,000 ways that won\'t work.',
    author: 'Thomas Edison',
  ),
];
