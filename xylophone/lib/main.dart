import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
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
          backgroundColor: Colors.green[900],
          title: Text('XYLOPHONE'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1, 'Tin'),
              buildKey(Colors.orange, 2, 'Tung'),
              buildKey(Colors.yellow, 3, 'Tang'),
              buildKey(Colors.green, 4, 'Huu'),
              buildKey(Colors.teal, 5, 'Tii'),
              buildKey(Colors.blue, 6, 'Tee'),
              buildKey(Colors.purple, 7, 'Tyy'),
            ],
          ),
        ),
      ),
    );
  }
}
