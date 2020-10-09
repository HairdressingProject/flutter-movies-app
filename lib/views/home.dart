import 'package:flutter/material.dart';
import 'package:movie_app/views/layout.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  build(BuildContext context) {
    return Layout(
      title: 'Home',
      header: 'Browse movies',
      drawerItems: buildDefaultDrawerItems(context),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
            ),
            Container(
                child: Text(
              'Home UI',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                  fontSize: 18),
            )),
          ],
        ),
      ),
    );
  }
}
