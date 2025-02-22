import 'package:flutter/material.dart';

/// Flutter code sample for [AnimatedAlign].

void main() => runApp(const AnimatedAlignExampleApp());

class AnimatedAlignExampleApp extends StatelessWidget {
  const AnimatedAlignExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedAlign Sample')),
        body: const AnimatedAlignExample(),
      ),
    );
  }
}

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: 340.0,
          height: 250.0,
          color: Colors.grey,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topLeft : Alignment.bottomLeft,
            duration: const Duration(seconds: 6),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 80.0),
          ),
        ),
      ),
    );
  }
}
