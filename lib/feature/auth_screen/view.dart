import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_market/constant/color.dart';
import 'package:online_market/constant/style.dart';
import 'package:online_market/navigate/route.dart';
import 'package:online_market/widget/custom_button.dart';
import '../login/view.dart';
import '../sign_up/view.dart';
class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(child: Text("Connexion",style: kbcstyle(context, 25, kwhite),)),
          Column(
            children: [
             CustomButton((){
               MagicRouter.navigateTo(const SignUpScreen());
             },  Text("Create an account",style: kbcstyle(context, 20, kblack),),
             kwhite),
              CustomButton((){}, Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const FaIcon(FontAwesomeIcons.google,size: 45,color: Colors.redAccent),
                    Text("   Connect with Google" ,style: kbcstyle(context, 20, kblack)),
                  ],
                ),

              ),
              kwhite),
              CustomButton((){}, Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const FaIcon(FontAwesomeIcons.facebookF,size: 45,color: kPrimaryColor,),
                    Text("Connect with Facebook" ,style: kbcstyle(context, 20, kblack)),
                  ],
                ),
              ),
              kwhite),
              const SizedBox(height: 30),
              GestureDetector(child:  Text("Already have an account ? Login",style: kcstyle(context, 23,const Color.fromRGBO(251, 223, 1, 1)),),onTap: (){
                MagicRouter.navigateTo(const LoginScreen());

              },)
            ],
          ),
        ],
      ),
    );
  }
}
