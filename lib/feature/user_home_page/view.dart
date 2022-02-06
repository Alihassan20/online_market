import 'package:flutter/material.dart';
import 'package:online_market/constant/size.dart';
import 'package:online_market/navigate/route.dart';

import '../../constant/color.dart';
import '../../constant/style.dart';
import '../../widget/custom_button.dart';
import 'Pages/account_information.dart';
import 'Pages/contact_us.dart';

class UserPage extends StatelessWidget {
   UserPage({Key? key}) : super(key: key);
  ScrollController scollBarController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kblack),
        elevation: 0,
        backgroundColor: kwhite,
        title: Text(
          "Account",
          style: kstyle(context, 25, kblack),
          textAlign: TextAlign.right,
        ),
      ),
      body:Scrollbar(
        controller: scollBarController,
        thickness: 5,
        trackVisibility:true,
        showTrackOnHover:true,
        interactive:true,
        radius: const Radius.circular(15),
        isAlwaysShown: true,
        child: SingleChildScrollView(
          controller:scollBarController ,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Hero(
                      tag: 'logo',
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: kwhite,
                        child: Image.asset(
                          'assets/image/Logo.png',
                          width: sizeFromWidth(context, 1),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: sizeFromWidth(context, 12)),
                      child: Text(
                        "James Warden",
                        style: kbstyle(context, 25),
                      ),
                    )
                  ],
                ),
                CustomButton(
                  () {},
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Orders",
                        style: kbcstyle(context, 20, kblack),
                        textAlign: TextAlign.start,
                      )),
                  kwhite.withOpacity(0.7),
                ),
                CustomButton(
                  () {
                    MagicRouter.navigateTo(AccountInformation());
                  },
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Account information",
                        style: kbcstyle(context, 20, kblack),
                        textAlign: TextAlign.start,
                      )),
                  kwhite.withOpacity(0.7),
                ),
                CustomButton(
                  () {},
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Help",
                        style: kbcstyle(context, 20, kblack),
                        textAlign: TextAlign.start,
                      )),
                  kwhite.withOpacity(0.7),
                ),
                CustomButton(
                  () {
                    MagicRouter.navigateTo(ContactUsPage());
                  },
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Contact us",
                        style: kbcstyle(context, 20, kblack),
                        textAlign: TextAlign.start,
                      )),
                  kwhite.withOpacity(0.7),
                ),
                CustomButton(
                  () {},
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Terms & Conditions",
                        style: kbcstyle(context, 20, kblack),
                        textAlign: TextAlign.start,
                      )),
                  kwhite.withOpacity(0.7),
                ),
                CustomButton(
                  () {},
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Your Adresses",
                        style: kbcstyle(context, 20, kblack),
                        textAlign: TextAlign.start,
                      )),
                  kwhite.withOpacity(0.7),
                ),
                CustomButton(
                  () {},
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "About us",
                        style: kbcstyle(context, 20, kblack),
                        textAlign: TextAlign.start,
                      )),
                  kwhite.withOpacity(0.7),
                ),
                CustomButton(
                  () {},
                  Text(
                    "Log out",
                    style: kbcstyle(context, 20, kwhite),
                    textAlign: TextAlign.start,
                  ),
                  Colors.red.withOpacity(0.9),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
