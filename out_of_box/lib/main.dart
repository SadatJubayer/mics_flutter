import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('voice1.mp3');
  }

  Expanded buildKey(Color color, int num, String text) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(num);
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text('Listening Something from an ROBOT'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1, 'Sa'),
              buildKey(Colors.orange, 2, 'SA'),
              buildKey(Colors.yellow, 3, 'SA'),
              buildKey(Colors.green, 4, 'SA'),
              buildKey(Colors.teal, 5, 'SA'),
              buildKey(Colors.blue, 6, 'SA'),
            ],
          ),
        ),
      ),
    );
  }
}
