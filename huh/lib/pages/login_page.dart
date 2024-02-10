import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        textStyle: const TextStyle(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(top: 100, left: 30),
                child: const Text("Welcome")),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.only(left: 30),
              child: const Text(
                  "Today is a new day. It’s your day. You shape it Sign in to start study"),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(children: [
                TextFormField(
                  textAlign: TextAlign.left,
                  decoration: const InputDecoration(
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(labelText: "Password"),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(),
                  child: const Text("Login"),
                )
              ]),
            )
          ],
        ));
  }
}
