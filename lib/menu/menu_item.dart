import 'package:flutter/material.dart';

class ItemsMenu{

  final String title;
    final String subTitle;
      final String link;
        final IconData icon;

   const ItemsMenu({required this.title, required this.subTitle, required this.link, required this.icon});



}
const appMenuItem = <ItemsMenu> [
ItemsMenu(title:'Buttons',
   subTitle:'Some button in flutter',
   link:'/buttons',
   icon:Icons.smart_button_outlined),

   ItemsMenu(title:'Cards',
   subTitle:'Some button in flutter',
   link:'/cards',
   icon:Icons.card_giftcard),

];