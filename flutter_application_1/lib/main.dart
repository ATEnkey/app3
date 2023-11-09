import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen2.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            child: const Text('screen 1'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SecondRoute(
                          bgImage: 'assets/images/background.png',
                          avatarImage: 'assets/images/1.png',
                        )),
              );
            },
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: const Text('screen 2'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SecondRoute(
                          bgImage: 'assets/images/background2.jpg',
                          avatarImage: 'assets/images/av1.jpg',
                        )),
              );
            },
          ),
        ]),
      ),
    );
  }
}
