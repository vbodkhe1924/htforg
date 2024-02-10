import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HeroPage extends StatefulWidget {
  const HeroPage({super.key});

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
          const Padding(
              padding: EdgeInsets.only(top: 100, left: 50, right: 50)),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Tip of the Day",
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Don’t be afraid to make mistakes.",
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(
            height: 177,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildCard(
                    'assets/images/img1.jpg', 'Title 1', 'Description 1'),
                _buildCard(
                    'assets/images/img2.png', 'Title 2', 'Description 2'),
                _buildCard(
                    'assets/images/img3.jpg', 'Title 3', 'Description 3'),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(child: _buildCard1('assets/images/Card.jpg')),
          const SizedBox(height: 20),
          const SizedBox(height: 20),
          Container(
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the container
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Shadow color
                    spreadRadius: 5, // Spread radius
                    blurRadius: 7, // Blur radius
                    offset: const Offset(0, 3), // Offset in x and y directions
                  ),
                ],
                borderRadius: BorderRadius.circular(32), // Rounded corners
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 56),
                    child: CircularPercentIndicator(
                      radius: 43.0,
                      lineWidth: 8.0,
                      animation: true,
                      percent: 0.7,
                      center: const Text(
                        "70.0%",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.blue,
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    children: [
                      Text("Chapter 2"),
                      Text("Discovering English"),
                      Text("Continue your journey!")
                    ],
                  )
                ],
              ))
        ]));
  }
}

Widget _buildCard(String imagePath, String title, String description) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: InkWell(
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
        child: Card(
          color: Colors.blueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 100,
                height: 75,
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                description,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _buildCard1(String imagePath) {
  return Column(children: [
    Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(imagePath),
        Padding(
          padding: const EdgeInsets.all(50),
          child: SizedBox(
            width: 295,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // background color
                ),
                child: const Text(
                  'Continue Browsing',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),
      ],
    ),
  ]);
}
