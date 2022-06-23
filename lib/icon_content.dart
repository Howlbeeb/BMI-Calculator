import 'package:flutter/material.dart';
import 'Constants.dart';
class icon_content extends StatelessWidget {
  icon_content({this.icon, this.label});
  final IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 15),
        Text(
          label!,
          style: kicontextstyle ,
        )
      ],
    );
  }
}
