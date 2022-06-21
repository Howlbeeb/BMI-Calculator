import 'package:flutter/material.dart';

const bottomAppbarheight = 80.0;
const cardcolor= Color(0xFF1D1E33);
const bottombarcolor=Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(cardcolor)),
                Expanded(
                  child: ReusableCard(cardcolor),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(cardcolor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(cardcolor)),
                Expanded(child: ReusableCard(cardcolor))
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              height: bottomAppbarheight,
              width: double.infinity,color: bottombarcolor,),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(@required this.colour);
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
