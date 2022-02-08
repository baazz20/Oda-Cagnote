import 'package:flutter/material.dart';
import 'package:swipeable_tile/swipeable_tile.dart';

import 'person.dart';

class NormalScreen extends StatefulWidget {
  const NormalScreen({Key? key}) : super(key: key);

  @override
  _NormalScreenState createState() => _NormalScreenState();
}

class _NormalScreenState extends State<NormalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Nomal Usecase'),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: persons
            .map(
              (Person person) => SwipeableTile(
                color: Colors.white,
                swipeThreshold: 0.2,
                direction: SwipeDirection.horizontal,
                isEelevated: false,
                borderRadius: 0,
                onSwiped: (_) {
                  // final index = persons.indexOf(person);

                  // setState(() {
                  //   persons.removeAt(index);
                  // });
                },
                backgroundBuilder: (
                  _,
                  SwipeDirection direction,
                  AnimationController progress,
                ) {
                  if (direction == SwipeDirection.endToStart) {
                    return Container(color: Colors.red);
                  } else if (direction == SwipeDirection.startToEnd) {
                    return Container(color: Colors.blue);
                  }
                  return Container();
                },
                key: UniqueKey(),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(48),
                    child: Image.network(person.imageURL),
                  ),
                  title: Text(
                    person.name,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text('${person.state} ${person.streetAddress}'),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
