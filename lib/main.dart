import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'dart:math';

void main() {
  runApp(Balls());
}

class Balls extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: NewGradientAppBar(
          gradient: LinearGradient(
            colors: [
              Colors.cyan,
              Colors.indigo,
            ]
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu),
              Text('Uefa Champions League Balls'),
              Icon(Icons.exit_to_app)
            ],
          ),

        ),
        body: BallChallenge(),

      ),
    );
  }
}

class BallChallenge extends StatefulWidget {

  @override
  _BallChallengeState createState() => _BallChallengeState();
}

class _BallChallengeState extends State<BallChallenge> {

  int ball=1;
  void Baller() {
    this.ball = Random().nextInt(5) + 1;
  }


  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        )
      ),
      constraints: BoxConstraints.expand(),

        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 400,
                    height: 400,
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          Baller();
                    });
                  },
                  child: Image.asset("assets/images/ballers/uefa$ball.jpg"),
                ))
              ],
            ),
        ),

    );
  }
}


