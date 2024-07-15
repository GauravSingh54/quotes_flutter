import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(
      home: QuotesList(),
    ));

class QuotesList extends StatefulWidget {
  const QuotesList({super.key});

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(
        author: 'Andrew Tate',
        text: 'Everyone has a Lambo or a Ferrari, it"s easy.'),
    Quote(author: 'Andrew Tate 2', text: 'Reject weakness in any form.'),
    Quote(
        author: 'Andrew Tate 3',
        text: 'Only true freedom is a powerful network and lots of money')
  ];

  Widget quoteTemplate(Quote quote) {
    return QuoteCard(quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}


