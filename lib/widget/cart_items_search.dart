import 'package:flutter/material.dart';
import 'package:online_market/constant/color.dart';
import 'package:online_market/constant/size.dart';
import 'package:online_market/constant/style.dart';

class CartSearch extends StatelessWidget {
  String img;
  String name;
  String price;
   CartSearch(this.img,this.name,this.price);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      child: Container(
        height: sizeFromHeight(context, 6),
        child: Card(
          elevation: 2,
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
          ),
          child:Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 80,
                    width: 120,
                    child: Image.asset(img,fit: BoxFit.contain,)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(name,style: kbcstyle(context, 20, kblack),),
                    Text(price,style: kcstyle(context, 15, kPrimaryColor),)
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
