import 'package:flutter/material.dart';

class History extends StatefulWidget {
  final String inputText;

  const History(this.inputText, {Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
      ),
      body: Container(
        width: 200,
        height: 100,
        color: Colors.white,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            widget.inputText,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

