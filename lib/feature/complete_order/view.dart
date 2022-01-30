import 'package:flutter/material.dart';
import 'package:online_market/feature/pay/view.dart';

import '../../constant/color.dart';
import '../../constant/style.dart';
import '../../navigate/route.dart';
import '../../widget/checkbox_listtile.dart';
import '../../widget/custom_button.dart';

class CompleteOrder extends StatelessWidget {
   CompleteOrder({Key? key}) : super(key: key);
  final list1 =  {
    'Cash' : false,
    'Credit Card' : false,

  };
   final list2 =  {
     'Work' : false,
     'Home' : false,
     'Cafe' : false,

   };
   ScrollController scollBarController = ScrollController();

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kblack),
        elevation: 0,
        backgroundColor: kwhite,
        title: Text(
          "CompleteOrder",
          style: kbcstyle(context, 30, kblack),
          textAlign: TextAlign.right,
        ),
      ),
      body: Scrollbar(
        controller: scollBarController,
        thickness: 5,
        trackVisibility:true,
        showTrackOnHover:true,
        interactive:true,
        radius: const Radius.circular(15),
        isAlwaysShown: true,
        child: SingleChildScrollView(
          controller:scollBarController ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 10,bottom: 10),
                child: Text("Payment Method",style: kbcstyle(context, 25, kblack),),
              ),
              CheckBoxField(List: list1),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Address",style: kbcstyle(context, 25, kblack)),
                    Text("Add Address",style: kcstyle(context, 15, Colors.grey)),
                  ],
                ),
              ),
              CheckBoxField(List: list2),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cost :",style: kbcstyle(context, 25, kblack)),
                    Text("USD 255",style: kcstyle(context, 15, kPrimaryColor)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Taxes :",style: kbcstyle(context, 25, kblack)),
                    Text("USD 100",style: kcstyle(context, 15, kPrimaryColor)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Discount :",style: kbcstyle(context, 25, kblack)),
                    Text("USD 0",style: kcstyle(context, 15, Colors.redAccent)),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total :",style: kbcstyle(context, 25, kblack)),
                    Text("USD 355",style: kcstyle(context, 15, kPrimaryColor)),
                  ],
                ),
              ),
              CustomButton(() {
                MagicRouter.navigateTo( PayView());
              }, Text("Complete Order", style: kbcstyle(context, 20, kwhite)),
                  kPrimaryColor),
              SizedBox(height: 15,)



            ],
          ),
        ),
      ),

    );
  }
}
