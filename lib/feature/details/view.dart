import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_market/constant/size.dart';
import 'package:online_market/feature/add_to_cart/view.dart';
import 'package:online_market/feature/details/unit/view.dart';
import 'package:online_market/navigate/route.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constant/color.dart';
import '../../constant/style.dart';
import '../../widget/custom_button.dart';
import '../home/unit/listview_horizontal.dart';

class DetailsView extends StatelessWidget {
  String img;
  String name;
  int price;
   DetailsView(this.img,this.name,this.price);



  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[
      Image.asset(img),
      Image.asset(img),
      Image.asset(img)


    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kblack,size: 35),
        elevation: 0,
        backgroundColor: kwhite,
      ),
      body:  Container(
        height: sizeFromHeight(context, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 15,bottom: 10),
              child: Text(name,style: kbcstyle(context, 30, kblack),),
            ),
            ListviewHorizontal(list,4),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Center(child: Text("Total Price = ${price}",style: kbcstyle(context, 20, kblack),)),
            ),
            Padding(
               padding:  EdgeInsets.only(left: 5,top: sizeFromHeight(context, 7.5)),
               child: Text("Description : ",style: kbcstyle(context, 20, kblack),),
             ),
            const DescriptionContent(),
            Padding(
              padding:   EdgeInsets.only(top: sizeFromHeight(context, 22)),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton((){
                      MagicRouter.navigateTo(AddToCart());
                    },
                        Text("Add To Cart",style: kbcstyle(context, 20, kwhite)),kPrimaryColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: (){
                        print("55");
                      },
                      child: Container(
                        height: 60,width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(224, 236, 248, 1)
                        ),
                        child:const Center(child:  FaIcon(FontAwesomeIcons.star,color: kPrimaryColor,)),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
