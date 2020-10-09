import 'package:flutter/material.dart';
import 'package:movie_app/views/about.dart';
import 'package:movie_app/views/home.dart';

const DrawerHeader defaultDrawerHeader = DrawerHeader(
  child: Center(
      child: Text('Menu',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ))),
);

List<ListTile> buildDefaultDrawerItems(BuildContext context) {
  return [
    ListTile(
      title: Row(
        children: [
          Icon(Icons.home),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
          Text('Home'),
        ],
      ),
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()))
      },
    ),
    ListTile(
      title: Row(
        children: [
          Icon(Icons.help),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
          Text('About')
        ],
      ),
      onTap: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => About()))
      },
    )
  ];
}

class Layout extends StatelessWidget {
  Layout(
      {Key key,
      this.header,
      this.body,
      this.title,
      this.drawerHeader = defaultDrawerHeader,
      this.drawerItems})
      : super(key: key);

  final String header;
  final String title;
  final DrawerHeader drawerHeader;
  final List<ListTile> drawerItems;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        drawer: Drawer(
          child: ListView(
            children: [drawerHeader, ...drawerItems],
          ),
        ),
        body: body);
  }
}
