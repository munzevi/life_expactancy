import 'calculate.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'user_data.dart';

class ResultPage extends StatelessWidget {
  final UserData userData;

  ResultPage(this.userData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Yaşam Ömrü Tahmini'),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 10,
              child: Center(
                child: Text(
                  Calculate(userData).result().round().toString(),
                  style: kMetinStyle,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Geri Git',
                  style: kMetinStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
