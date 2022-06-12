import 'package:flutter/material.dart';
import 'stateful_widget.dart';
import 'const.dart';

void main() {
  runApp(LifeTimePage());
}

class LifeTimePage extends StatelessWidget {
  const LifeTimePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Yaşam Ömrü Tahmini'),
        ),
        body: LifeContent(),
      ),
    );
  }
}
