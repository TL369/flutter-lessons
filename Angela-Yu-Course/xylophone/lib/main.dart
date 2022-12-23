import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone Demo',
      theme: ThemeData(),
      home: const XylophonePage(),
    );
  }
}

class XylophonePage extends StatelessWidget {
  const XylophonePage({super.key});

  void playSound(int soundNumber) {
    AudioPlayer audioPlayer = AudioPlayer();
    audioPlayer.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Expanded buildKey(Color color, int soundNumber) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () => playSound(soundNumber),
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(Colors.red, 1),
          buildKey(Colors.orange, 2),
          buildKey(Colors.yellow, 3),
          buildKey(Colors.green, 4),
          buildKey(Colors.blue, 5),
          buildKey(Colors.teal, 6),
          buildKey(Colors.purple, 7),
        ],
      ),
    );
  }
}
