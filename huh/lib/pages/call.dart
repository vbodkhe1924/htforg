import 'package:http/http.dart' as http;
import 'dart:convert'; // Use dart:convert for JSON operations

class Call {
  static Future<void> sendData(String result) async {
    try {
      var response = await http.post(
        Uri.parse('https://huh-server.vercel.app/api/ai/response'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"text": result}),
      );
      print(response.body);

      if (response.statusCode == 200) {
        print("Data sent successfully: ${response.body}");
      } else {
        print("Failed to send data. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error sending data: $e");
    }
  }
}
