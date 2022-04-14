import 'package:flutter/material.dart';

final Widget mockScreen = Center(
    child: Image.asset(
  "assets/mock_screen.png",
  width: 250,
));

final Widget darkScreen = Image.asset(
  "assets/dark_screen.png",
  height: 250,
);

final Widget darkScreensGrid = Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        darkScreen,
        const SizedBox(
          width: 30,
        ),
        darkScreen
      ],
    ),
    const SizedBox(
      height: 20,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        darkScreen,
        const SizedBox(
          width: 30,
        ),
        darkScreen
      ],
    ),
  ],
);
