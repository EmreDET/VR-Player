import 'package:flutter/material.dart';
import 'package:vr_player_example/video_player_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool autoPlay = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VR Player Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Auto Play',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Switch.adaptive(
                value: autoPlay,
                onChanged: (value) {
                  setState(() {
                    autoPlay = value;
                  });
                }),
            const SizedBox(height: 50),
            ElevatedButton.icon(
              key: const Key("start_video_button"),
              onPressed: () {
                buttonOnPressed();
              },
              label: const Text('Start Video'),
              icon: const Icon(Icons.play_arrow),
            ),
          ],
        ),
      ),
    );
  }

  void buttonOnPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VideoPlayerPage(
          autoPlay: autoPlay,
        ),
      ),
    );
  }
}
