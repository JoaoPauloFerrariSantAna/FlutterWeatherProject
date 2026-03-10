import 'package:flutter/material.dart';

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('Hello world!'),
          ],
        ),
      ),
    );
  }
}

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key, required this.title});
  final String title;

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}