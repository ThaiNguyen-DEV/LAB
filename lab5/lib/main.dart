import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Thêm dòng này để đảm bảo binding được khởi tạo
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AudioPlayer player = AudioPlayer(); // Khởi tạo AudioPlayer

  void playSound(int soundNumber) async {
    await player.play(AssetSource("note$soundNumber.wav")); // Sử dụng AssetSource
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(148, 0, 0, 0),
          title: Center(child: Text('Xylophone App')),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    playSound(1);
                  },
                  color: Colors.red,
                  enableFeedback: false,
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    playSound(2);
                  },
                  color: Colors.orange,
                  enableFeedback: false,
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    playSound(3);
                  },
                  color: Colors.yellow,
                  enableFeedback: false,
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    playSound(4);
                  },
                  color: Colors.green,
                  enableFeedback: false,
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    playSound(5);
                  },
                  color: Colors.teal,
                  enableFeedback: false,
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    playSound(6);
                  },
                  color: Colors.blue,
                  enableFeedback: false,
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    playSound(7);
                  },
                  color: Color.fromARGB(255, 0, 18, 122),
                  enableFeedback: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}