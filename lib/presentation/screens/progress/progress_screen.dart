import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Screen'),
      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors =Theme.of(context).colorScheme;
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30,),

          Text('Circular progress indicator'),
          SizedBox(height: 10,),
          CircularProgressIndicator(strokeWidth: 2,backgroundColor: colors.inversePrimary,),

          SizedBox(height: 20),
          Text('Controlled circular and linear progress indicator'),
          _ControlledProgressIndicator()


        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
     final colors =Theme.of(context).colorScheme;
    return StreamBuilder(
      stream: Stream.periodic(Duration(milliseconds: 300),
      (value){
        return (value*2)/100;
      }).takeWhile((value) => value<100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data??0;
        return  Padding(
        padding: EdgeInsets.symmetric(horizontal:20),
        child: Row(
          children: [
            CircularProgressIndicator(value: progressValue,strokeWidth: 2,backgroundColor:colors.inversePrimary ,),
            SizedBox(width: 30),
            Expanded(
              child: LinearProgressIndicator(value: progressValue ,),
            )
          ],
        ),
      );
      },
      
  
    );
  }
}