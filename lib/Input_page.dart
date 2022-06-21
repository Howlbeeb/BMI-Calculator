import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                Expanded(child: ReusableCard(colour:cardcolor,
                  cardchild: Column(
                    children: <Widget>[
                      Icon(
                          FontAwesomeIcons.mars,size: 80.0,),],) ,),),
                Expanded(
                  child: ReusableCard(colour: cardcolor,cardchild: ,),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour:cardcolor,cardchild: ,),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour:cardcolor,cardchild: , )),
                Expanded(child: ReusableCard(colour:cardcolor,cardchild: ,))
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
  ReusableCard({required this.colour,this.cardchild});
  final Color colour;
  final Widget cardchild;

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
