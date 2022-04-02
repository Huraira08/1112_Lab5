//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const AudioPlayer());
}

class AudioPlayer extends StatelessWidget {
  const AudioPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(child: PlayerButton(1, Colors.yellow)),
              Expanded(child: PlayerButton(2, Colors.black)),
              Expanded(child: PlayerButton(3, Colors.purple)),
              Expanded(
                  child: PlayerButton(4, Color.fromARGB(255, 98, 149, 236))),
              Expanded(child: PlayerButton(5, Colors.orange)),
              Expanded(child: PlayerButton(6, Colors.red)),
              Expanded(child: PlayerButton(7, Colors.greenAccent)),
            ],
          ),
        ),
      ),
    );
  }

  Container PlayerButton(int num, Color col) {
    return Container(
      child: FlatButton(
          onPressed: () {
            final AudioCache audio = AudioCache();
            audio.play('note$num.wav');
          },
          child: Text('')),
      color: col,
      height: double.infinity,
    );
  }
}
