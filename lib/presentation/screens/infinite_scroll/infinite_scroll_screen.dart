import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InfiniteScroolScreen extends StatelessWidget {
  const InfiniteScroolScreen({super.key});
   static const name = 'infinite_scroll_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Infinite Scroll"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) =>SizedBox()
          
      )
    );
  }
}