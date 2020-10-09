import 'package:flutter/material.dart';
import 'package:movie_app/views/app.dart';
import 'package:movie_app/views/navigation/pages.dart';

void main(List<String> args) {
  runApp(App(title: 'Movies app', pages: pages));
  // runApp(MaterialApp(title: 'Navigation basics', home: FirstRoute()));
}
