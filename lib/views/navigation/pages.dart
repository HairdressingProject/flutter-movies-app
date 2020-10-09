import 'package:flutter/material.dart';
import 'package:movie_app/views/about.dart';
import 'package:movie_app/views/home.dart';

List<MaterialPage> pages = [
  MaterialPage(key: ValueKey('AboutPage'), child: About()),
  MaterialPage(key: ValueKey('HomePage'), child: Home())
];
