import 'package:flutter/material.dart';
import 'package:flutter_application_8/details.dart';

class Util {
  static const String UNICORN_1_PATH = '/unicorn1.webp';
  static const String UNICORN_2_PATH = '/unicorn2.webp';
  static const String UNICORN_3_PATH = '/unicorn3.webp';
  static Widget buildHeroIcon(String path, String tag) {
    return Hero(
      tag: tag,
      child: Container(
        width: 80,
        height: 80,
        child: Image.asset(path, fit: BoxFit.cover),
      ),
    );
  }

  static Widget buildHeroDestination(String path, String tag, double width) {
    return Hero(
      tag: tag,
      child: Container(
        width: width,
        child: Image.asset(path, fit: BoxFit.cover),
      ),
    );
  }
}
