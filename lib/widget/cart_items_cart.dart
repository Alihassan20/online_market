import 'package:flutter/material.dart';
import 'package:online_market/constant/color.dart';
import 'package:online_market/constant/size.dart';
import 'package:online_market/constant/style.dart';

class CartCart extends StatelessWidget {
  String img;
  String name;
  String price;
  CartCart(this.img,this.name,this.price);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
      child: Container(
        width: sizeFromWidth(context, 1.2),
        height: sizeFromHeight(context, 5),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Card(
          elevation: 2,
          color: Colors.white,
          child:Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                    height: 80,
                    width: 100,
                    child: Image.asset(img,fit: BoxFit.contain,)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name,style: kbcstyle(context, 20, kblack),),
                    Text(price,style: kcstyle(context, 15, kPrimaryColor),textAlign: TextAlign.left)
                  ],
                ),
              )
            ],
          ) ,
        ),
      ),
    );
  }
}
