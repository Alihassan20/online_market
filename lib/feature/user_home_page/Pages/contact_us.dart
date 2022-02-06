import 'package:flutter/material.dart';

import '../../../constant/color.dart';
import '../../../constant/size.dart';
import '../../../constant/style.dart';
import '../../../navigate/route.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_textform.dart';

class ContactUsPage extends StatelessWidget {
   ContactUsPage({Key? key}) : super(key: key);
  ScrollController scollBarController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kblack, size: 35),
        elevation: 0,
        backgroundColor: kwhite,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, bottom: 5),
                child: Text(
                  "Have a question ?",
                  style: kbcstyle(context, 30, kblack),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only( left: 15, bottom: 20),
                child: Text(
                  "contact us now",
                  style: kbcstyle(context, 30, kblack),
                ),
              ),


              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only( left: 15),
                    child: Text("Email",style: kbstyle(context, 20),),
                  ),
                  TextFormByField(
                    hinnt: ' ahmed@abogamil.com',
                    inputTxt: TextInputType.visiblePassword,
                    secure: true,

                  ),
                  const SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only( left: 15),
                    child: Text("Phone",style: kbstyle(context, 20),),
                  ),
                  TextFormByField(
                    hinnt: ' 0123456789',
                    inputTxt: TextInputType.visiblePassword,
                    secure: true,

                  ),
                  const SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only( left: 15),
                    child: Text("Name",style: kbstyle(context, 20),),
                  ),
                  TextFormByField(
                    hinnt: ' Ahmed Abogameel',
                    inputTxt: TextInputType.visiblePassword,
                    secure: true,

                  ),
                  const SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only( left: 15),
                    child: Text("Message",style: kbstyle(context, 20),),
                  ),
                  TextFormByField(
                    lines: 5,
                    hinnt: 'What do you think ?',
                    inputTxt: TextInputType.visiblePassword,
                    secure: true,

                  ),
                  const SizedBox(height: 5,),
                  CustomButton(
                        () {
                      MagicRouter.pop();
                    },
                    Text(
                      "Submit",
                      style: kbcstyle(context, 20, kwhite),
                      textAlign: TextAlign.start,
                    ),
                    kPrimaryColor,
                  ),


                ],
              )

            ],
          ),
        ),
      ),

    );
  }
}
