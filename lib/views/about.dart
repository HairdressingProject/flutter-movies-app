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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.chevron_left,
                      size: 32.0,
                    ),
                    onPressed: () => Navigator.of(context).pop()),
                Text('About',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold))
              ],
            )
          ],
        ),
      ),
    );
  }
}
