import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

class SlideInfo{
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
SlideInfo('Search your favorite food', '', 'assets/images/1.png'),
SlideInfo('Fast delivery', '', 'assets/images/2.png'),
SlideInfo('Enjoy your food', '', 'assets/images/3.png'),

];

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  final PageController pageViewController = PageController();
  bool endReach = false;
  
  @override
  void initState(){
    super.initState();

    pageViewController.addListener(() { 
      final page = pageViewController.page;
      if(!endReach && page! >= (slides.length-1.5)){
        setState(() {
          endReach = true;
        });
      }
      
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children:[ 
          PageView(
            controller: pageViewController,
          physics: BouncingScrollPhysics(),
          children: [
            ...slides.map((slideData) => _SlideView(title: slideData.title, caption: slideData.caption, imageUrl: slideData.imageUrl))
            
      
          ],
        ),
        Positioned(
          right: 25,
          top: 20,
          child: 
        TextButton(
          child: Text('Skip'),
          onPressed: ()=>context.pop(),
        )
        ),

        endReach? Positioned(
          right: 25,
          bottom: 20,
          child: 
        FadeInRight(
          duration: Duration(seconds: 1),
          child: TextButton(
            child: Text('Start'),
            onPressed: ()=>context.pop(),
          ),
        )
        ) : SizedBox()
        
        ]
      ),
    );
  }
}


class _SlideView extends StatelessWidget {
 final String title;
  final String caption;
  final String imageUrl;

  const _SlideView({super.key, required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle =Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal:30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageUrl),
            const SizedBox(height: 20),
            Text(title, style: titleStyle,),
            const SizedBox(height: 10),
            Text(caption,style: captionStyle,)
          ],
        ),
      ),
    );
  }
}