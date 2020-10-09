import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First route')),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            // navigate to second route here
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondRoute()));
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second route'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              // navigate back to first route
              Navigator.pop(context);
            },
            child: Text('Go back'),
          ),
        ));
  }
}
