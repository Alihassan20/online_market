import 'package:flutter/material.dart';
import 'package:online_market/constant/size.dart';
import 'package:online_market/navigate/route.dart';
import 'package:online_market/widget/custom_textform.dart';

import '../../../constant/color.dart';
import '../../../constant/style.dart';
import '../../../widget/custom_button.dart';
class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kblack, size: 35),
        elevation: 0,
        backgroundColor: kwhite,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, bottom: 20),
            child: Text(
              "Change Password",
              style: kbcstyle(context, 30, kblack),
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormByField(
                    hinnt: ' Current password',
                    inputTxt: TextInputType.visiblePassword,
                    secure: true,

                  ),
                  const SizedBox(height: 5,),
                  TextFormByField(
                    hinnt: ' New password',
                    inputTxt: TextInputType.visiblePassword,
                    secure: true,

                  ),
                   SizedBox(height: sizeFromHeight(context, 8),),
                  CustomButton(
                        () {
                          MagicRouter.pop();
                        },
                    Text(
                      "Confirm modification",
                      style: kbcstyle(context, 20, kwhite),
                      textAlign: TextAlign.start,
                    ),
                    kPrimaryColor,
                  ),


                ],
              ),
            ),
          )

        ],
      ),

    );
  }
}
