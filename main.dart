import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('Hudas first demo'),
      centerTitle: true,
      backgroundColor: Colors.pink,
    ),
    body: Center(
      child: Text(
          'welcome to my app',
      style: TextStyle(
         fontSize: 20.0,
         fontWeight: FontWeight.bold,
         letterSpacing: 2.0,
          color: Colors.grey,

      ),
    ),
    ),
    floatingActionButton: FloatingActionButton(
      child: Text('click'),
      backgroundColor: Colors.amberAccent,
      onPressed: () {
        // This function will be executed when the button is pressed
        print('You clicked the button!');

      },
    ),
  ),
));
