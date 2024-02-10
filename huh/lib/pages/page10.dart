import 'package:flutter/material.dart';
import 'package:huh/pages/call.dart';
import 'package:huh/pages/response.dart';
import 'package:huh/pages/tts.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class PageAi extends StatefulWidget {
  const PageAi({Key? key}) : super(key: key);

  @override
  State<PageAi> createState() => _PageAiState();
}

class _PageAiState extends State<PageAi> {
  final SpeechToText _speechToText = SpeechToText();

  bool _speechEnabled = false;
  String _wordsSpoken = "";

  @override
  void initState() {
    super.initState();
    initSpeech();
  }

  Future<void> initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  void _stopListening() async {
    await _speechToText.stop();
    await ResponseDart(_wordsSpoken);
    print('this page');
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _wordsSpoken = result.recognizedWords;
      if (_speechToText.isNotListening) {
        _stopListening();3

        
      }
      print("This is On SPeech resultL:  $_wordsSpoken");
      // Call.sendData(_wordsSpoken);
    });
  }

// void _handleSubmit(String inputText) async {
//   String responseMessage = await ResponseDart.sendData(inputText);
//   var context;
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: Text("Response from Server"),
//         content: Text(responseMessage),
//         actions: <Widget>[
//           FloatingActionButton(
//             child: Text("OK"),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//         ],
//       );
//     },
//   );
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Container(
              height: 58,
              width: 500,
              color: Colors.grey[100],
              child: const Padding(
                padding: EdgeInsets.all(13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Pick your Language"),
                    Spacer(),
                    Text("English"),
                    SizedBox(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 36),
            SizedBox(
              height: 242,
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/mic.jpg',
                    scale: 6,
                  ),
                  const SizedBox(),
                ],
              ),
            ),
            const Text(
              "Learn with AI",
              style: TextStyle(fontSize: 22),
            ),
            ElevatedButton(
              onPressed: () {
                _speechToText.isListening
                    ? _stopListening()
                    : _startListening();
              },
              child: const Text('Enabled'),
            ),
          ],
        ),
      ),
    );
  }
}
