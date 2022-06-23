import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

enum Gender {
  male,
  female,
}

const bottomAppbarheight = 80.0;
const Activecardcolor = Color(0xFF1D1E33);
const Inactivecardcolor = Color(0xFF111328);
const bottombarcolor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  Color malecardcolor = Inactivecardcolor;
  Color femalecardcolor = Inactivecardcolor;


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
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour:selectedGender== Gender.male
                          ? Activecardcolor
                          : Inactivecardcolor,
                      cardchild: icon_content(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender==Gender.female?Activecardcolor:Inactivecardcolor,
                      cardchild: icon_content(
                          icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Activecardcolor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  colour: Activecardcolor,
                )),
                Expanded(
                    child: ReusableCard(
                  colour: Activecardcolor,
                ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: bottomAppbarheight,
            width: double.infinity,
            color: bottombarcolor,
          ),
        ],
      ),
    );
  }
}
