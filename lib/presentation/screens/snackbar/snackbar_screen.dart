import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});
   static const name = 'snackbar_screen';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Snackbar and dialogs"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: const Text('Licenses'),
              onPressed: () {
                showAboutDialog(context: context);
              },
            ),
             OutlinedButton(
              child: const Text('Show dialog'),
              onPressed: () {
              openDialog(context);
              },
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: Text('Show snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
          showCustomSnackbar(context);
        },
      ),
    );
  }
}


void showCustomSnackbar(BuildContext context){
ScaffoldMessenger.of(context).clearSnackBars();

  final snackBarr =  SnackBar(content:const Text('Show custom snack'));
  ScaffoldMessenger.of(context).showSnackBar(snackBarr);
}

void openDialog(BuildContext context){
  showDialog(context: context, builder: (context)=>
  
  AlertDialog(
    title: const Text('Are you sure you want to?'),
    content: Text(''),
    actions: [
      TextButton(onPressed: () {
         context.pop();
      }, child: Text('Cancel')),
      OutlinedButton(onPressed: () {
        context.pop();
      }, child: Text('Ok'))
    ],
  )
  );
}