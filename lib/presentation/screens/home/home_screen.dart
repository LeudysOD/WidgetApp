import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/menu/menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: _HomeView(key: key,),
    );
  }
}



class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItem.length,
      itemBuilder: (context, index) {
        
        final menuItem = appMenuItem[index];

        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    Key? key,
    required this.menuItem,
  }) : super(key: key);

  final ItemsMenu menuItem;

  @override
  Widget build(BuildContext context) {
      final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon,color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary,
      ),
      onTap: () {
        context.push(menuItem.link);
       /*  Navigator.pushNamed(context,menuItem.link); */
      },
    );
  }
}


 