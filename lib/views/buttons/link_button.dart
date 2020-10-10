import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  LinkButton({Key key, this.icon, @required this.text, @required this.url})
      : super(key: key);

  final String url;
  final String text;
  final Icon icon;

  _launchUrl() async {
    var encoded = Uri.encodeFull(url);
    if (await canLaunch(encoded)) {
      await launch(encoded);
    } else {
      throw 'Could not launch $encoded';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      child: RaisedButton(
        onPressed: _launchUrl,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            this.icon ?? null,
            Container(
              child: Text(
                this.text,
                style:
                    TextStyle(letterSpacing: 0.5, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
