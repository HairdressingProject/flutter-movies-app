import 'package:flutter/material.dart';
import 'package:movie_app/views/buttons/link_button.dart';
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
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: const Text(
                  'Developed as an upskilling task for the Hairdressing Project, ' +
                      'this app demonstrates building layouts and performing API ' +
                      'requests in Flutter.' +
                      '\n\n' +
                      'Visit the links below for more information.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontFamily: 'Klavika',
                      fontSize: 18.0,
                      letterSpacing: 0.8,
                      height: 2.0),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
              LinkButton(
                  text: 'GitHub repository',
                  icon: Icon(Icons.code_sharp),
                  url:
                      'https://github.com/HairdressingProject/flutter-movies-app'),
              Spacer(),
              Text(
                'License: MIT',
                style: TextStyle(
                    fontFamily: 'Klavika',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.8,
                    color: Colors.amberAccent[200]),
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
              )
            ],
          ),
        ));
  }
}
