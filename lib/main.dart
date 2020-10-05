import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(int note) {
    final player = new AudioCache();
    player.play('note$note.wav');
  }

  Widget noteButton(int button, Color color) {
    return Expanded(
      flex: 1,
      child: SizedBox(
        child: FlatButton(
          onPressed: () {
            playNote(button);
          },
          child: null,
          color: color,
        ),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              noteButton(1, Colors.red),
              noteButton(2, Colors.purple),
              noteButton(3, Colors.indigo),
              noteButton(4, Colors.teal),
              noteButton(5, Colors.green),
              noteButton(6, Colors.yellow),
              noteButton(7, Colors.brown),
            ],
          ),
        ),
      ),
    );
  }
}
