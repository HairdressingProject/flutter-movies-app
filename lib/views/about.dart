import 'package:flutter/material.dart';
import 'package:movie_app/views/layout.dart';

class About extends StatelessWidget {
  About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
        title: 'About',
        header: 'About UI',
        drawerItems: buildDefaultDrawerItems(context),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
              ),
              const Text(
                'About this app',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.0,
                    fontFamily: 'Klavika'),
              )
            ],
          ),
        ));
  }
}
