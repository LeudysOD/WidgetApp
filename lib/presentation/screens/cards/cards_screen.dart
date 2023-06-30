import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: Placeholder(),
    );
  }
}