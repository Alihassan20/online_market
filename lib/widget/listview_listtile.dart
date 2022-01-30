import 'package:flutter/material.dart';
import 'package:online_market/constant/style.dart';

import '../../../constant/color.dart';
import '../../../constant/size.dart';

class ContainerListTile extends StatelessWidget {
  String str;
  String substr;
  void Function() ontap;
  Widget widget;
   ContainerListTile(this.str,this.substr,this.widget,this.ontap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        height: sizeFromHeight(context, 6),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: kPrimaryColor),
        width: sizeFromWidth(context, 1.04),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListTile(
            title: Text(str,style: kbcstyle(context, 20, kwhite),),
            subtitle:Text(substr,style: kbcstyle(context, 15, kwhite),),
            onTap:ontap,
            trailing: widget,
          ),
        ),
      ),
    );
  }
}
