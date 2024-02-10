import 'package:flutter_tts/flutter_tts.dart';

class TTS {
  FlutterTts flutterTts = FlutterTts();

  Future<void> configureTts() async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setSpeechRate(1.0);
    await flutterTts.setVolume(1.0);
  }

  Future<void> speakText(String text) async {
    try {
      final res = await flutterTts.speak(text);
    } catch (e) {
      print("Error sending data: $e");
    }
  }

  void stopSpeaking() async {
    flutterTts.stop().then((value) => print);
    await flutterTts.pause();
  }
}

  //  flutterTts.setCompletionHandler(() {});
  //  flutterTts.setErrorHandler((message) {
  //   print('Error occurred: $message');
//   });
// }
