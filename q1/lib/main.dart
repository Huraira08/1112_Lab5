import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 9, 80, 143),
          title: Text("Ask Me Anything"),
        ),
        backgroundColor: Colors.blue,
        body: Container(
            child: FlatButton(
              onPressed: () {
                print("I got clicked");
                int num = Random().nextInt(5);
                print(num);
              },
              child: Image(image: AssetImage('images/ball1.png')),
            ),
            alignment: Alignment.center),
      ),
    );
  }
}
