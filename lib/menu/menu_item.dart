import 'package:flutter/material.dart';

class MenuItem{

  final String title;
    final String subTitle;
      final String link;
        final IconData icon;

   const MenuItem({required this.title, required this.subTitle, required this.link, required this.icon});



}
const appMenuItem = <MenuItem> [
MenuItem(title:'Buttons',
 subTitle:'Some button in flutter',
  link:'.buttons',
   icon:Icons.smart_button_outlined),

   MenuItem(title:'Buttons',
 subTitle:'Some button in flutter',
  link:'.buttons',
   icon:Icons.smart_button_outlined),

   MenuItem(title:'Buttons',
 subTitle:'Some button in flutter',
  link:'.buttons',
   icon:Icons.smart_button_outlined),

   MenuItem(title:'Buttons',
 subTitle:'Some button in flutter',
  link:'.buttons',
   icon:Icons.smart_button_outlined)

];