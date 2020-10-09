import 'package:flutter/material.dart';

class App extends StatefulWidget {
  App({Key key, this.title, this.pages}) : super(key: key);

  final String title;
  final List<MaterialPage> pages;

  @override
  _App createState() => _App();
}

class _App extends State<App> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home: Navigator(
        pages: widget.pages,
        onPopPage: (route, result) => route.didPop(result),
      ),
      theme: ThemeData(
          primaryColor: Colors.deepPurple,
          accentColor: Colors.purple[300],
          fontFamily: 'Klavika',
          textTheme: TextTheme(
              headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
              headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
              bodyText2: TextStyle(fontSize: 14.0))),
    );
  }
}
