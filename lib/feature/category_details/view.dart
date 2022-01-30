import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constant/color.dart';
import '../../constant/size.dart';
import '../../constant/style.dart';
import '../../core/model/home_model.dart';

class CategoryDetailsScreen extends StatelessWidget {
  String str;
   CategoryDetailsScreen(this.str);
  List category = [
    ListOfCategory(img: 'assets/image/2.png', name: 'Computers', Price: 1500),
    ListOfCategory(img: 'assets/image/laptop.png', name: 'laptop', Price: 1000),
    ListOfCategory(img: 'assets/image/Monitor.png', name: 'Monitor', Price: 800),
    ListOfCategory(img: 'assets/image/Smartphone.png', name: 'Smartphone', Price: 500),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kblack,size: 35),
        elevation: 0,
        backgroundColor: kwhite,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 15,bottom: 10,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(str,style: kbcstyle(context, 30, kblack),),
                 const FaIcon(FontAwesomeIcons.borderAll)
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.count(
                physics:const  ScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                shrinkWrap: true,
                children:category
                    .map<Widget>(
                      (e) => GestureDetector(
                    child: Card(
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                                margin: const EdgeInsets.only(top: 15),
                                height: sizeFromHeight(context, 6),
                                child: Image.asset(e.img,fit: BoxFit.fitHeight,)),
                          ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(e.name,style: kstyle(context, 18, kblack)),
                          ),
                          const SizedBox(height: 7),

                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("\$${e.Price}",style: kstyle(context, 15, kPrimaryColor)),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      // Navigator.pushNamed(context, "episode", arguments: e);
                    },
                  ),
                )
                    .toList(),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
