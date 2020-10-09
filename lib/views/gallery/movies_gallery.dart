import 'package:flutter/material.dart';

import 'movie_item.dart';

class MoviesGallery extends StatefulWidget {
  @override
  _MoviesGalleryState createState() => _MoviesGalleryState();
}

class _MoviesGalleryState extends State<MoviesGallery> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Scrollbar(
            child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                children:
                    List.generate(20, (index) => Center(child: MovieItem())))));
  }
}
