import 'package:flutter/material.dart';

import 'widget/Button.dart';
import 'widget/StackLayout.dart';

class SecondRoute extends StatelessWidget {
  final String bgImage;
  final String avatarImage;

  const SecondRoute(
      {super.key, required this.bgImage, required this.avatarImage});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          decoration: BoxDecoration(
            image: DecorationImage(
                // fit: BoxFit.cover,
                image: Image.asset(
                  bgImage,
                ).image,
                fit: BoxFit.fill),
          ),
          child: Stack(
            // clipBehavior: Clip.none,/
            alignment: AlignmentDirectional.center,
            children: [
              StackLayout(avatarImage: avatarImage),
              Button(
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
