import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({required this.ontap, required this.Title});
  final void Function()? ontap;
  final String? Title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
            child: Text(
              Title!,
              style: kLargestyle,
            )),
        margin: EdgeInsets.only(top: 10),
        height: kbottomAppbarheight,
        width: double.infinity,
        color: kbottombarcolor,
      ),
    );
  }
}