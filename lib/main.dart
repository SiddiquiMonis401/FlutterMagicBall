import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask Me Anything!!'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void onBallTapped () {
    int number = new Random().nextInt(4) + 1;
    print(number);
    setState(() {
      ballNumber = number;      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue[300],
      child: Center(
        child: InkWell(
          onTap: onBallTapped,
          child: FadeInImage(
          image: AssetImage("images/ball$ballNumber.png"), placeholder: AssetImage("images/placeholder.jpeg"),
        ))
      ),
    );
  }
}
