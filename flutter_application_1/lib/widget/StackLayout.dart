import 'package:flutter/material.dart';

var love = const AssetImage("assets/images/love.png");

class StackLayout extends StatelessWidget {
  const StackLayout({
    super.key,
    required this.avatarImage,
  });
  final String avatarImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              left: 10,
              right: 10,
              top: 10,
              bottom: 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(253 / 2),
                  color: Colors.amber,
                  image: DecorationImage(image: Image.asset(avatarImage).image),
                ),
                // child: Image(xx
                //   image: image_1,
                //   fit: BoxFit.fill,
                // width: 256,
                // height: 253,
              ),
            ),
            Image(
              image: love,
              width: 256,
              height: 253,
            )
          ],
        ),
        const SizedBox(
          height: 11,
        ),
        const Text(
          'Matched',
          style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontFamily: 'TitanOne',
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 24,
        ),
        const SizedBox(
          width: 286,
          height: 44,
          child: Text(
            'You and Jessica Lee like each other. Why not make the first move?',
            style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontFamily: 'SF-Pro-Text',
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.none),
            textAlign: TextAlign.center,
          ),
        ),
      ], // child: Scaffold(backgroundColor: Color.transparent),
    );
  }
}
