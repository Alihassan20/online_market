import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_market/feature/search/unit/search.dart';

import '../../constant/color.dart';
import '../../constant/style.dart';
import '../../core/model/home_model.dart';
import '../../widget/cart_items_search.dart';

class SearchView extends StatelessWidget {
  SearchView({Key? key}) : super(key: key);
  List category_search = [
    ListOfCategory(
        img: 'assets/image/2.png', name: 'Google Home mini', Price: 49),
    ListOfCategory(
        img: 'assets/image/laptop.png', name: 'Google Home mini', Price: 49),
    ListOfCategory(
        img: 'assets/image/Monitor.png', name: 'Google Home mini', Price: 49),
    ListOfCategory(
        img: 'assets/image/Smartphone.png', name: 'Google Home mini', Price: 49),
  ];
  ScrollController scollBarController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kblack),
        elevation: 0,
        backgroundColor: kwhite,
        title: Text(
          "Search",
          style: kstyle(context, 25, kblack),
          textAlign: TextAlign.right,
        ),
      ),
      body: (Column(
        children: [
          Search('   What are you looking for ?'),
          Expanded(
            child: Scrollbar(
              controller: scollBarController,
              thickness: 5,
              trackVisibility:true,
              showTrackOnHover:true,
              interactive:true,
              radius: const Radius.circular(15),
              isAlwaysShown: true,
              child: ListView(
                controller:scollBarController ,
                children: category_search
                    .map<Widget>(
                      (e) => GestureDetector(
                        child: CartSearch(e.img, e.name, 'USD ${e.Price}'),
                        onTap: () {
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
