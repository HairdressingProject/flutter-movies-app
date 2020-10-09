import 'package:flutter/material.dart';
import 'package:movie_app/views/layout.dart';
import 'package:movie_app/views/gallery/movies_gallery.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  build(BuildContext context) {
    return Layout(
      title: 'Home',
      header: 'Browse movies',
      drawerItems: buildDefaultDrawerItems(context),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
          ),
          const Text(
            'Browse movies',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                fontSize: 24.0,
                fontFamily: 'Klavika'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
          ),
          MoviesGallery()
          // buildMoviesGallery(context)
        ],
      ),
    );
  }
}
