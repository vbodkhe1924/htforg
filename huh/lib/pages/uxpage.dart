import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UxExp extends StatelessWidget {
  const UxExp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Huh!",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text("Learning          faster. think bigger . speak fluent",
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))),
          ),
          const SizedBox(
            height: 104,
          ),
          const Padding(
            padding: EdgeInsets.all(32.0),
            child: Text(
              "Start practicing your skills and learn languages with Artificial Intelligence ",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 34,
          ),
          Container(
            height: 47,
            width: 344,
            color: Colors.blue,
            child: ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //   primary: Colors.blue,
              //
              onPressed: () {}, // default value for onPressed
              child: const Text(
                'Start Learning',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ]));
  }
}
