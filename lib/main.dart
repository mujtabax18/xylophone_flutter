import 'dart:async';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // ignore: prefer_function_declarations_over_variables

Expanded addkey( {Color color=Colors.green,int sound_id=1})
  { return Expanded(child: OutlinedButton(
    child:Container(
      color: color,
    ),

    onPressed: () async {
      final player= AudioPlayer();
  await  player.play(AssetSource('note$sound_id.wav'));
    },
  ),
  );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              addkey(color: Colors.green,sound_id: 1),
              addkey(color: Colors.teal,sound_id: 2),
              addkey(color: Colors.blue,sound_id: 3),
              addkey(color: Colors.purple,sound_id:4),
              addkey(color: Colors.red,sound_id: 5),
              addkey(color: Colors.orange,sound_id: 6),
              addkey(color: Colors.yellow,sound_id: 7),
            ],
          ),
        ),
      ),
    );
  }
}
