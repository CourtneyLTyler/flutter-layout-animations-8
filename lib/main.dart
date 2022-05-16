import 'package:flutter/material.dart';
import 'package:flutter_application_8/details.dart';
import 'package:flutter_application_8/util.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero Animation',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: HeroPage(),
    );
  }
}

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Animation Demo')),
      body: Container(
        padding: EdgeInsets.all(24),
        alignment: Alignment.topLeft,
        child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              children: [
          GestureDetector(
            child: Util.buildHeroIcon(Util.UNICORN_1_PATH, 'unicorn1'),
            onTap: () {
              changeRoute(context, 'unicorn1');
            },
          ),
          GestureDetector(
            child: Util.buildHeroIcon(Util.UNICORN_2_PATH, 'unicorn2'),
            onTap: () {
              changeRoute(context, 'unicorn2');
            },
          ),
          GestureDetector(
            child: Util.buildHeroIcon(Util.UNICORN_3_PATH, 'unicorn3'),
            onTap: () {
              changeRoute(context, 'unicorn3');
            },
          ),
        ]),
      ),
    );
  }
}

void changeRoute(BuildContext context, String creature) {
  switch (creature) {
    case 'unicorn1':
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Details(Util.UNICORN_1_PATH, creature),
        ),
      );
      break;
    case 'unicorn2':
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Details(Util.UNICORN_2_PATH, creature),
        ),
      );
      break;
    case 'unicorn3':
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Details(Util.UNICORN_3_PATH, creature),
        ),
      );
      break;
    default:
  }
}
