import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swipeable_tile/swipeable_tile.dart';
import 'package:vibration/vibration.dart';

import 'cardscreen.dart';
import 'normalscreen.dart';
import 'person.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const ClampingScrollPhysics(),
      children: const <Widget>[
        NormalScreen(),
      ],
    );
  }
}
