import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onTap;
  const Button({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 69,
      child: Stack(children: [
        Container(
          width: 358,
          height: 56,
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color(0xffF857A6),
              Color(0xffFF5858),
            ]),
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        const Positioned.fill(
          child: Center(
            child: Text(
              'Dating Now',
              // textAlign:(),
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'SF-Pro-Text',
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none),
            ),
          ),
        ),
        Positioned.fill(
          left: 26,
          child: Row(children: [
            SizedBox(
              width: 23.42,
              height: 21.36,
              child: Image.asset('assets/icons/icon.png'),
            ),
          ]),
        ),
        Positioned.fill(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28))),
              onPressed: () => onTap(),
              child: null),
        )
      ]),
    );
  }
}
