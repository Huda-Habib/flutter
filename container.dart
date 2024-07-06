
import 'package:flutter/material.dart';
class MyAppBar extends StatelessWidget{
  const MyAppBar({required this.title, super.key});
   final Widget title;

   @override
  Widget build(BuildContext context){
     return Container(
       height: 56,
       padding: const EdgeInsets.symmetric(horizontal: 8),
       decoration: BoxDecoration(color:Colors.cyan ),
       child: Row(
         children: [
           const IconButton(
             icon: Icon(Icons.menu),
             tooltip: 'Navigation menu',
             onPressed: null,
           ),
           Expanded(
               child: title
           ,),
           const IconButton(
             icon: Icon(Icons.search),
             tooltip: 'search',
             onPressed: null,
           ),

         ],
       ),
     );
   }

}
class MyScaffold extends StatelessWidget{
  const MyScaffold({super.key});
  @override
  Widget build(BuildContext context){
    return Material(
      child: Column(
        children:[
          MyAppBar(
              title: Text(
          'my title',
        style: Theme.of(context).primaryTextTheme.titleLarge,

      ),
          ),
          const Expanded(
              child: Center(
                child: Text('hey world how are you'),
              ),
          ),
    ],

      ),
    );
  }
}
void main(){
  runApp(
    const MaterialApp(
      title: 'My app',
      home: SafeArea(
        child: MyScaffold(),
      ),
    ),
  );
}


