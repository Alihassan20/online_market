import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_market/constant/style.dart';

import '../../../constant/color.dart';

class ColumFeature extends StatelessWidget {
  IconData icon;
  String str;
  void Function() ontap;
   ColumFeature(this.str,this.ontap,this.icon);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          maxRadius: 30,
            backgroundColor: const Color.fromRGBO(224, 236, 236, 1),
            child: IconButton(onPressed:ontap , icon: FaIcon(icon,color: kPrimaryColor,), )),
        Padding(
          padding: const EdgeInsets.only(top: 7),
          child: Text(str,style: kstyle(context, 13, kPrimaryColor),),
        )
      ],
    );
  }
}
