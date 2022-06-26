import 'Input_page.dart';
import '../components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';
import '../components/BottomButton.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiresult,required this.ResultText, required this.Intepretation});
  final String? bmiresult;
  final String? ResultText;
  final String? Intepretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULTOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kExtrastyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActivecardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      ResultText!.toUpperCase(),
                      style: kresultstyle,
                    ),
                    Text(
                      bmiresult!,
                      style: kBMIstyle,
                    ),
                    Text(
                      Intepretation!,
                      style: kbodytext,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),), BottomButton(ontap: (){Navigator.pop(context);}, Title:'RE-CALCULATE')
        ],
      ),
    );
  }
}
