import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CartItem extends StatelessWidget {
  String?txt ;
  VoidCallback  ontaop;
  CartItem(this.txt,this.ontaop);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
      child: GestureDetector(
        onTap: ontaop,
        child: Card(
          elevation: 2,
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: Container(
            width: double.maxFinite,
            height: 70,
            child: Padding(
              padding:  const EdgeInsets.only(left: 20),
              child: Text(txt!,style: const  TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87

              ),),
            ),alignment: Alignment.centerLeft,),
        ),
      ),
    );
  }
}
