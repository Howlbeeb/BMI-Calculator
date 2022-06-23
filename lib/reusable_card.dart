import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  final Color? colour;
  final Widget? cardchild;
  ReusableCard({@required this.colour, this.cardchild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}