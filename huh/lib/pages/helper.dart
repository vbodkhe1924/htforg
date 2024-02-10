// tts_helper.dart
import 'package:flutter_tts/flutter_tts.dart';

class TtsHelper {
  static Future<void> speak(FlutterTts flutterTts, String text,
      {double volume = 0.5,
      double pitch = 1.0,
      double rate = 0.5,
      String? selectedVoice}) async {
    await flutterTts.setVolume(volume);
    await flutterTts.setSpeechRate(rate);
    await flutterTts.setPitch(pitch);

    if (selectedVoice != null) {
      final resspeech = await flutterTts.setVoice({"name": selectedVoice});
      print("THis is TTS TExt Not empty Response: $resspeech");
    }

    if (text.isNotEmpty) {
      final res = await flutterTts.speak(text);
      print("THis is TTS TExt Not empty Response: $res");
    }
  }
}
