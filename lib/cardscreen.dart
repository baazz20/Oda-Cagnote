import 'package:flutter/material.dart';
import 'package:swipeable_tile/swipeable_tile.dart';

import 'person.dart';
class CardScreen extends StatefulWidget {
  const CardScreen({
    Key? key,
  }) : super(key: key);

  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Card Tile'),
      ),
      backgroundColor: Colors.white,
      body: ListView(children: <Widget>[
        ...persons.map(
          (Person person) => SwipeableTile.card(
            color: const Color(0xFFab9ee8),
            shadow: BoxShadow(
              color: Colors.black.withOpacity(0.35),
              blurRadius: 4,
              offset: const Offset(2, 2),
            ),
            horizontalPadding: 16,
            verticalPadding: 8,
            direction: SwipeDirection.horizontal,
            onSwiped: (_) {
              // final index = persons.indexOf(person);

              // setState(() {
              //   persons.removeAt(index);
              // });
            },
            backgroundBuilder:
                (_, SwipeDirection direction, AnimationController progress) {
              return AnimatedBuilder(
                animation: progress,
                builder: (_, __) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    color: progress.value > 0.4
                        ? const Color(0xFFed7474)
                        : const Color(0xFFeded98),
                  );
                },
              );
            },
            key: UniqueKey(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(48),
                    child: Image.network(person.imageURL)),
                title: Text(
                  person.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
                subtitle: Text(
                  '${person.state} ${person.city}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}