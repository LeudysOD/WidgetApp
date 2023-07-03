import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

final cards = <Map<String,dynamic>>[
{'elevation': 0.0, 'label':'Elevation 0'},
{'elevation': 1.0, 'label':'Elevation 1'},
{'elevation': 2.0, 'label':'Elevation 2'},
{'elevation': 3.0, 'label':'Elevation 3'},
{'elevation': 4.0, 'label':'Elevation 4'},
{'elevation': 5.0, 'label':'Elevation 5'}
];



class CardScreen extends StatelessWidget {
  const CardScreen({super.key});
   static const name = 'cards_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map((card) =>_CardType1(elevation: card['elevation'],label: card['label'],) ),
          ...cards.map((card) =>_CardType2(elevation: card['elevation'],label: card['label'],) ),
           ...cards.map((card) =>_CardType3(elevation: card['elevation'],label: card['label'],) ),
            ...cards.map((card) =>_CardType4(elevation: card['elevation'],label: card['label'],) ),
           const SizedBox(height: 50,)
        ],
      ),
    );
  }
}


class _CardType1 extends StatelessWidget {

  final String label;
  final double elevation;


  const _CardType1({super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding:  const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children:  [
            Align(
            child: IconButton(
            icon: Icon(Icons.more_vert_outlined),
            onPressed: () {
              
            },
            ),
            alignment: Alignment.topRight,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {

  final String label;
  final double elevation;


  const _CardType2({super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        side: BorderSide(
        color: colors.primary
      )),
      elevation: elevation,
      child: Padding(
        padding:  const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children:  [
            Align(
            child: IconButton(
            icon: Icon(Icons.more_vert_outlined),
            onPressed: () {
              
            },
            ),
            alignment: Alignment.topRight,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - outlined'),
            )
          ],
        ),
      ),
    );
  }
}


class _CardType3 extends StatelessWidget {

  final String label;
  final double elevation;


  const _CardType3({super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      color: colors.secondary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        side: BorderSide(
        color: colors.primary
      )),
      elevation: elevation,
      child: Padding(
        padding:  const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children:  [
            Align(
            child: IconButton(
            icon: Icon(Icons.more_vert_outlined),
            onPressed: () {
              
            },
            ),
            alignment: Alignment.topRight,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - filled', style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}

class _CardType4 extends StatelessWidget {

  final String label;
  final double elevation;


  const _CardType4({super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(
        children:  [
         Container(
          height: 350,
          color: colors.primary,
         ),
         Align(
          alignment: Alignment.topRight,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
            ),
            child: IconButton(
              icon: Icon(Icons.more_vert_outlined),
              onPressed: () {
                
              },
            ),
          ),
         )
         
        ],
      ),
    );
  }
}

