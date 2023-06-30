import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});
  final String name = 'buttons_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),

      ),
      body:  _ButtonsView()
      );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
   child: Padding(
     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
     child: Wrap(
      alignment: WrapAlignment.center,
      spacing: 10,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        ElevatedButton(onPressed: () {}, child: const Text('Elevated button'),),
        ElevatedButton(onPressed: null, child: const Text('Elevated button'),),
        ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.access_alarm_rounded), label: const Text('Elevated Icon')),
        
        
      ],
     ),
   ),
    );
  }
}