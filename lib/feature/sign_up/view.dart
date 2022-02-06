import 'package:flutter/material.dart';
import 'package:online_market/constant/size.dart';

import '../../constant/color.dart';
import '../../constant/style.dart';
import '../../navigate/route.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_textform.dart';
import '../home/view.dart';
import '../login/view.dart';
import '../nav_bar/view.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: sizeFromHeight(context, 6.5)),
            child: Center(child: Text("Create an account",style: kbcstyle(context, 25, kwhite),)),
          ),
          Padding(
            padding:  EdgeInsets.only(top: sizeFromHeight(context, 8)),
            child: Column(
              children: [
                TextFormByField(secure: false,
                  inputTxt:TextInputType.name,hint: 'Full name',validator: (v){},onSaved: (v){},),
                TextFormByField(secure: false,
                  inputTxt:TextInputType.emailAddress,hint: 'Email',validator: (v){},onSaved: (v){},),
                TextFormByField(secure: false,
                  inputTxt:TextInputType.number,hint: 'Password',validator: (v){},onSaved: (v){},),
                CustomButton((){
                  MagicRouter.navigateAndPopAll( NavBarView(0));
                },  Text("Validate",style: kbcstyle(context, 20, kPrimaryColor),),
                  kwhite
                ),


                const SizedBox(height: 30),
                GestureDetector(child:  Text("Already have an account ? Login",style: kcstyle(context, 23,const Color.fromRGBO(251, 223, 1, 1)),),onTap: (){
                  MagicRouter.navigateTo(const LoginScreen());

                },)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
