import 'package:flutter/material.dart';

import '../../../constant/color.dart';
import '../../../constant/style.dart';
class DescriptionContent extends StatelessWidget {
  const DescriptionContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(". Color  ..........",style: kbcstyle(context, 17, kblack),),
          Text(". 5.6 Inc",style: kbcstyle(context, 17, kblack)),
          Text(". 258 GB",style: kbcstyle(context, 17, kblack)),
        ],
      ),
    );
  }
}
