import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

class InfiniteScroolScreen extends StatefulWidget {
  const InfiniteScroolScreen({super.key});
   static const name = 'infinite_scroll_screen';

  @override
  State<InfiniteScroolScreen> createState() => _InfiniteScroolScreenState();
}

class _InfiniteScroolScreenState extends State<InfiniteScroolScreen> {

  List<int> imagesIds = [1,2,3,4,5];
  final ScrollController scrollController =ScrollController();
  bool isLoading = false;
  bool isMounted = true;

  @override
  void initState(){
    super.initState();
    scrollController.addListener(() { 

      if((scrollController.position.pixels +500)>=scrollController.position.maxScrollExtent){
          lodNextPage();
      }

      
    });
  }

   @override
  void dispose(){
    scrollController.dispose();
    isMounted = false;
    super.dispose();
  }

Future lodNextPage() async{
 if(isLoading) return;
 
   isLoading = true;

 
 setState(() {
 });
 
 await Future.delayed(Duration(seconds: 2));

  
    
    isLoading = false;
     addFiveImages();
    if(!isMounted) return;
    setState(() {
 });

    moveScrollToBottom();

}

  void addFiveImages(){
    
    final lastId = imagesIds.last;
    imagesIds.addAll([1,2,3,4,5].map((e) => lastId+e));
  }

  void moveScrollToBottom(){
    if(scrollController.position.pixels+100 <= scrollController.position.maxScrollExtent) return;

      scrollController.animateTo(
      scrollController.position.pixels+120,
       duration: Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
    
  }

  Future<void> onRefresh()async{
    await Future.delayed(Duration(seconds: 1));
      if (!isMounted) return;

    final lastId = imagesIds.last;
    isLoading = true;
    imagesIds.clear();
    imagesIds.add(lastId+1);
    addFiveImages();
    isLoading = false;
    moveScrollToBottom();
    
  setState(() {
    
  });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Infinite Scroll"),
      ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          child: _CustomListView(scrollController: scrollController, imagesIds: imagesIds),
         onRefresh: () => onRefresh(),
          ),
      ),
      floatingActionButton: _ActionButton(isLoading: isLoading),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    Key? key,
    required this.isLoading,
  }) : super(key: key);

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => isLoading ? null : context.pop(),
      child:isLoading ? ElasticIn(child: SpinPerfect(infinite: true, child: Icon(Icons.refresh_rounded))) : FadeIn(child: Icon(Icons.arrow_back_ios_new_outlined)),
    );
  }
}

class _CustomListView extends StatelessWidget {
  const _CustomListView({
    Key? key,
    required this.scrollController,
    required this.imagesIds,
  }) : super(key: key);

  final ScrollController scrollController;
  final List<int> imagesIds;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: imagesIds.length,
      itemBuilder: (context, index) => FadeInImage(
        fit: BoxFit.cover,
        width: double.infinity,
        height: 300,
        placeholder: AssetImage('assets/images/jar-loading.gif')
      , image: AssetImage('assets/images/2.png'))
        
    );
  }
}