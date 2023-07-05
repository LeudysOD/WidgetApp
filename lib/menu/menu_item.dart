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

  ItemsMenu(title:'ProgressIndicator',
   subTitle:'Some button in flutter',
   link:'/progress',
   icon:Icons.refresh_rounded),
   
   ItemsMenu(title:'SnackBar',
   subTitle:'Some button in flutter',
   link:'/snackbar',
   icon:Icons.info_outline),

  ItemsMenu(title:'Statefull widget animated',
   subTitle:'Some button in flutter',
   link:'/animated',
   icon:Icons.check_box_outlined),

   
  ItemsMenu(title:'UI Controls and Tiles',
   subTitle:'Some button in flutter',
   link:'/ui-controls',
   icon:Icons.car_rental_outlined),

  ItemsMenu(title:'On barding',
   subTitle:'Some button in flutter',
   link:'/tutorial',
   icon:Icons.home),

    ItemsMenu(title:'Infinite Scroll',
   subTitle:'Some button in flutter',
   link:'/infinite',
   icon:Icons.list_alt_rounded),






];