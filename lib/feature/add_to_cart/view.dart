import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_market/constant/color.dart';
import 'package:online_market/constant/size.dart';
import 'package:online_market/constant/style.dart';
import 'package:online_market/feature/cart/view.dart';
import 'package:online_market/feature/home/view.dart';
import 'package:online_market/navigate/route.dart';
import 'package:online_market/widget/custom_button.dart';

import '../nav_bar/view.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FaIcon(FontAwesomeIcons.shoppingCart,size: sizeFromHeight(context, 8),),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: sizeFromHeight(context, 10)),
              child: Text("Product added to cart ?",style: kbcstyle(context, 25, kblack),),
            ),
            CustomButton((){
              MagicRouter.navigateAndPopAll(NavBarView(2));

            }, Text("Go to cart",style: kbcstyle(context, 20, kPrimaryColor)), kwhite),
            CustomButton((){
              MagicRouter.navigateAndPopAll(NavBarView(0));
            }, Text("Back to shopping",style: kbcstyle(context, 20, kwhite)), kPrimaryColor)
          ],
        ),
      ),
    );
  }
}
