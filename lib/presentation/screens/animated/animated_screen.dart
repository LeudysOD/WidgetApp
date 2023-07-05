import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {

  AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;

  double height = 50;

  Color color = Colors.indigo;

  double borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOutBack,
          width: width<0?0:width,
          height: height<0?0:width,
          decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20)
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton
      (
        child: const Icon(Icons.play_arrow_rounded),
        onPressed: ()=> changeShape()
      ),
    );
  }
    void changeShape(){
    
    
    final random = Random();

       width = random.nextInt(300)+50;
       height = random.nextInt(300)+50;
       borderRadius = random.nextInt(100)+10;

       color = Color.fromRGBO(
       random.nextInt(255),
       random.nextInt(255),
       random.nextInt(255),
       1
       );

    setState(() {
       
    });
  }
}
