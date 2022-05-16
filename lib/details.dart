import 'package:flutter/material.dart';
import 'util.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class Details extends StatelessWidget {
  const Details(this.creaturePath, this.creatureTag);
  final String creaturePath;
  final String creatureTag;

  @override
  Widget build(BuildContext context) {
    pop() {
      Navigator.of(context).pop();
    }

    //  line below slows it down (normally is 1)
    timeDilation = 10;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: Center(
        child: Util.buildHeroRadialDestination(
            creaturePath, creatureTag, width, height, pop),
      ),
    );
  }
}
