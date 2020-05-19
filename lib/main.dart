import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNumber: 1,),
                buildKey(color: Colors.deepOrange, soundNumber: 2,),
                buildKey(color: Colors.yellow, soundNumber: 3,),
                buildKey(color: Colors.green, soundNumber: 4,),
                buildKey(color: Colors.teal, soundNumber: 5,),
                buildKey(color: Colors.blue, soundNumber: 6,),
                buildKey(color: Colors.purple, soundNumber: 7,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
