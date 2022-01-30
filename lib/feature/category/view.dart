import 'package:flutter/material.dart';
import 'package:online_market/feature/category_details/view.dart';
import 'package:online_market/navigate/route.dart';

import '../../constant/color.dart';
import '../../constant/style.dart';
import '../../widget/cart.dart';

class CategoryScreen extends StatelessWidget {
   CategoryScreen({Key? key}) : super(key: key);
  ScrollController scollBarController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kblack,size: 35),
        elevation: 0,
        backgroundColor: kwhite,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 15,bottom: 10),
            child: Text("Categories",style: kbcstyle(context, 30, kblack),),
          ),
          Expanded(
            child:Scrollbar(
              controller: scollBarController,
              thickness: 5,
              trackVisibility:true,
              showTrackOnHover:true,
              interactive:true,
              radius: const Radius.circular(15),
              isAlwaysShown: true,
              child: ListView(
                controller:scollBarController ,
                children: [
                  CartItem('All',(){
                    MagicRouter.navigateTo( CategoryDetailsScreen('All'));
                  }),
                  CartItem('Computers',(){
                    MagicRouter.navigateTo( CategoryDetailsScreen('Computers'));
                  }),
                  CartItem('Laptop',(){
                    MagicRouter.navigateTo( CategoryDetailsScreen('Laptop'));
                  }),
                  CartItem('Accessories',(){
                    MagicRouter.navigateTo( CategoryDetailsScreen('Accessories'));
                  }),
                  CartItem('Smartphones',(){
                    MagicRouter.navigateTo( CategoryDetailsScreen('Smartphones'));
                  }),
                  CartItem('Smart objects',(){
                    MagicRouter.navigateTo( CategoryDetailsScreen('Smart objects'));
                  }),
                  CartItem('Speakers',(){
                    MagicRouter.navigateTo( CategoryDetailsScreen('Speakers'));
                  }),
                  CartItem('Software',(){
                    MagicRouter.navigateTo( CategoryDetailsScreen('Software'));
                  })
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
