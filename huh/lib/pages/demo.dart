import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeechPage extends StatefulWidget {
  @override
  _TextToSpeechPageState createState() => _TextToSpeechPageState();
}

class _TextToSpeechPageState extends State<TextToSpeechPage> {
  late FlutterTts flutterTts;
  String? _selectedVoice;
  double _volume = 2;
  double _pitch = 1.0;
  double _rate = 0.5;

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    _initializeTts();
  }

  void _initializeTts() {
    flutterTts.setStartHandler(() {
      print("TTS Start");
    });

    flutterTts.setCompletionHandler(() {
      print("TTS Complete");
    });

    flutterTts.setErrorHandler((msg) {
      print("TTS Error: $msg");
    });

    _loadAvailableVoices();
  }

  Future<void> _loadAvailableVoices() async {
    var voices = await flutterTts.getVoices;
    if (voices != null && voices.isNotEmpty) {
      // Optionally, handle voice list (e.g., update UI or select a voice).
      print("Available voices: $voices");
      if (voices is List) {
        setState(() {
          _selectedVoice = voices.first['name'];
        });
      }
    }
  }

  Future<void> _speak(String text) async {
    await flutterTts.setVolume(_volume);
    await flutterTts.setSpeechRate(_rate);
    await flutterTts.setPitch(_pitch);

    // if (_selectedVoice != null) {
    //   await flutterTts.setVoice({"name": _selectedVoice});
    // }

    if (text.isNotEmpty) {
      await flutterTts.speak(text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text to Speech'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Input field for text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter text to speak',
                ),
                onSubmitted: (value) {
                  _speak(value);
                },
              ),
            ),
            // Add UI components for volume, pitch, rate, and voice selection here if needed
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
}
