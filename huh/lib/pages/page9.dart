import 'package:flutter/material.dart';

class page9 extends StatelessWidget {
  const page9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 58,
                width: 500,
                color: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Pick your Language"),
                      Container(),
                      const Text("English"),
                      const SizedBox()
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
                    Image.asset('assets/images/pg9.jpg'),
                    const SizedBox(
                      height: 34,
                    ),
                    const Text(
                      "Learn with Friends",
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                ),
              ),
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
              )
            ],
          ),
        ));
  }
}
