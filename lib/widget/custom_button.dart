

import 'package:flutter/material.dart';
import 'package:online_market/constant/color.dart';

class CustomButton extends StatelessWidget {
  void Function() ontap;
  Color color;
  Widget child;
  CustomButton(this.ontap,this.child,this.color);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Container(
        height: 60,
          width: double.infinity,
          child: ElevatedButton(onPressed: ontap,child: child
            ,style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                // side: const BorderSide(
                //   color: Colors.white,
                //   width: 2.0,
                // ),
              ),
            ),
          ),)),
    );
  }
}
