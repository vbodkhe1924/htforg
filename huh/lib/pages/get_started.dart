import 'package:flutter/material.dart';

class getStarted extends StatelessWidget {
  const getStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 104, left: 26, right: 26),
            child: Text(
              "Create personalized language learning plans with Huh!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 83,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              "Learn",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: const Text(
              "the way",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 200,
            width: 202,
            child: Image.asset('assets/images/mic.jpg'),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              "Learn",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: const Text(
              "Anywhere,anytime",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: const Text(
              "Like",
              style: TextStyle(fontSize: 25),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            child: const Text(
              'Get Started',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
