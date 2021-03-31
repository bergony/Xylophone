import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Butao("note1.wav", Colors.red),
              Butao("note2.wav", Colors.orange),
              Butao("note3.wav", Colors.yellow),
              Butao("note4.wav", Colors.green),
              Butao("note5.wav", Colors.greenAccent),
              Butao("note6.wav", Colors.blue),
              Butao("note7.wav", Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

class Butao extends StatelessWidget {
  String fileName;
  Color color;

  // constructor
  Butao(String fileName, Color color) {
    this.fileName = fileName;
    this.color = color;
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: color,
      onPressed: () {
        final AudioCache player = AudioCache();
        player.play(fileName);
      },
    );
  }
}
