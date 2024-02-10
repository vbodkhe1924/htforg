import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:huh/pages/tts.dart';

Future<String> ResponseDart(String text) async {
  try {
    var response = await http.post(
      Uri.parse('https://huh-server.vercel.app/api/ai/response'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"text": text}),
    );

    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");

    if (response.statusCode == 200) {
      print("Data sent successfully: ${response.body}");

      final spcToText = jsonDecode(response.body)['response'];
      print("Speech To text: $spcToText");
      final tts = TTS();
      await tts.configureTts();
      await tts.speakText(spcToText);
      print("Speached");
      return spcToText;
    } else {
      print("Failed to send data. Status code: ${response.statusCode}");
      return "Error: Failed to send data. Status code: ${response.statusCode}";
    }
  } catch (e) {
    print("Error sending data: $e");
    return "Error sending data: $e"; // Return error message to UI
  }
}
