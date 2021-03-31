import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              button("note1.wav", Colors.red),
              button("note2.wav", Colors.orange),
              button("note3.wav", Colors.yellow),
              button("note4.wav", Colors.green),
              button("note5.wav", Colors.green.shade800),
              button("note6.wav", Colors.blue),
              button("note7.wav", Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

class button extends StatelessWidget {
  String fileName;
  Color color;

  // constructor
  button(String fileName, Color color) {
    this.fileName = fileName;
    this.color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: FlatButton(
        color: color,
        onPressed: () {
          final AudioCache player = AudioCache();
          player.play(fileName);
        },
      ),
    );
  }
}
