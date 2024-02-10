import 'package:flutter/material.dart';
import 'package:huh/pages/call.dart';
import 'package:speech_to_text/speech_to_text.dart';

class HomepageTest1 extends StatefulWidget {
  const HomepageTest1({super.key});

  @override
  State<HomepageTest1> createState() => _HomePageState();
}

enum TtsState { playing, stopped }

class _HomePageState extends State<HomepageTest1> {
  final SpeechToText _speechToText = SpeechToText();

  bool _speechEnabled = false;
  String _wordsSpoken = "";

  @override
  void initState() {
    super.initState();
    initSpeech();
  }

  void initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  void _onSpeechResult(result) {
    setState(() {
      _wordsSpoken = "${result.recognizedWords}";
      print("This is Word; $_wordsSpoken");
      Call.sendData(_wordsSpoken);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Speech Demo',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Text(
              _speechToText.isListening
                  ? "listening..."
                  : _speechEnabled
                      ? "Tap the microphone to start listening..."
                      : "Speech not available",
              style: const TextStyle(fontSize: 20.0),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                _wordsSpoken,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          if (_speechToText.isNotListening)
            const Padding(
              padding: EdgeInsets.only(
                bottom: 100,
              ),
            )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _speechToText.isListening ? _stopListening : _startListening,
        tooltip: 'Listen',
        backgroundColor: Colors.blue,
        child: Icon(
          _speechToText.isNotListening ? Icons.mic_off : Icons.mic,
          color: Colors.white,
        ),
      ),
    );
  }
}
