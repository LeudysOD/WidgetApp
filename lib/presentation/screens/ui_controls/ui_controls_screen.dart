import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ControlsScreen extends StatefulWidget {
  const ControlsScreen({super.key});
  
  static const name = 'ui_controls_screen';

  @override
  State<ControlsScreen> createState() => _ControlsScreenState();
}

class _ControlsScreenState extends State<ControlsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('UI Controls'),
      ),
      body: _UiControlsView(),
 


    );

    
  }
}

  enum Transportation{car, plane, boat, submarine}

class _UiControlsView extends StatefulWidget {
   _UiControlsView({super.key});


  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
   bool isDeveloper = true;
   Transportation selectedTransport = Transportation.car;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile( 
          activeColor: colors.primary,
          title: const Text('Developer Mode'),
          subtitle: const Text('Aditionals controls'),
          value: isDeveloper, 
          onChanged: (value)=> setState(() {
            isDeveloper = !isDeveloper;
          })
          ),
           ExpansionTile(
            title: Text('Trasnport'),
            children: [
              RadioListTile(
            value: Transportation.car,
            groupValue: selectedTransport,
            onChanged: ((value) => setState(() {
              selectedTransport = Transportation.car;
            })),
            title: Text('Car'),
            subtitle: Text('Go in Car'),
            
           ),
           RadioListTile(
            value: Transportation.boat,
            groupValue: selectedTransport,
            onChanged: ((value) => setState(() {
              selectedTransport = Transportation.boat;
            })),
            title: Text('Boat'),
            subtitle: Text('Go in boat'),
            
           ),
           RadioListTile(
            value: Transportation.plane,
            groupValue: selectedTransport,
            onChanged: ((value) => setState(() {
              selectedTransport = Transportation.plane;
            })),
            title: Text('Plane'),
            subtitle: Text('Go in Plane'),
            
           ),
           RadioListTile(
            value: Transportation.submarine,
            groupValue: selectedTransport,
            onChanged: ((value) => setState(() {
              selectedTransport = Transportation.submarine;
            })),
            title: Text('Submarine'),
            subtitle: Text('Go in Submarine'),
            
           )
            ],
           
           ),

           
      ],
    );
  }
}