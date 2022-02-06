import 'package:flutter/material.dart';
import 'package:online_market/navigate/route.dart';

import '../../../constant/color.dart';
import '../../../constant/size.dart';
import '../../../constant/style.dart';
import 'change_password.dart';

class AccountInformation extends StatelessWidget {
  const AccountInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String number = "123456789";
    String secure = number.replaceAll(RegExp(r'.(?=.{4})'),'*'); // here n=4
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kblack, size: 35),
        elevation: 0,
        backgroundColor: kwhite,
      ),
      body: SingleChildScrollView(
        child: (
            Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, bottom: 20),
              child: Text(
                "Account information",
                style: kbcstyle(context, 30, kblack),
              ),
            ),
            Center(
              child: Hero(
                tag: 'logo',
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: kwhite,
                  child: Image.asset(
                    'assets/image/Logo.png',
                    width: sizeFromWidth(context, 1),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("User name",style: kbstyle(context, 25),),
                  Text("James Warden",style: kcstyle(context, 20, kPrimaryColor),),
                  const SizedBox(height: 30,),
                  Text("Email",style: kbstyle(context, 25),),
                  Text("j-warden@email.com",style: kcstyle(context, 20, kPrimaryColor),),
                  const SizedBox(height: 30,),
                  Text("Phone number",style: kbstyle(context, 25),),
                  Text("+33616 39 54 78",style: kcstyle(context, 20, kPrimaryColor),),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Password",style: kbstyle(context, 25),),
                      GestureDetector(
                        onTap: (){
                          MagicRouter.navigateTo(const ChangePasswordPage());
                        },
                          child: const Text("change Password"))
                    ],
                  ),

                  Text(secure,style: kcstyle(context, 20, kPrimaryColor),),
                ],
              ),
            )


          ],
        )),
      ),


    );
  }
}
