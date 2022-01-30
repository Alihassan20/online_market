import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_market/constant/color.dart';
import 'package:online_market/constant/size.dart';
import 'package:online_market/core/model/home_model.dart';
import 'package:online_market/feature/details/view.dart';
import 'package:online_market/feature/home/unit/category_favorites.dart';
import 'package:online_market/feature/home/unit/listview_horizontal.dart';
import 'package:online_market/navigate/route.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constant/style.dart';
import '../../widget/listview_listtile.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  List category = [
    ListOfCategory(img: 'assets/image/2.png', name: 'Computers', Price: 1500),
    ListOfCategory(img: 'assets/image/laptop.png', name: 'laptop', Price: 1000),
    ListOfCategory(
        img: 'assets/image/Monitor.png', name: 'Monitor', Price: 800),
    ListOfCategory(
        img: 'assets/image/Smartphone.png', name: 'Smartphone', Price: 500),
  ];

  List<Widget> listt = <Widget>[
    ContainerListTile('Bose Home Speaker', 'USD 279',
        Image.asset('assets/image/spek.png'), () {}),
    ContainerListTile('Bose Home Speaker', 'USD 279',
        Image.asset('assets/image/spek.png'), () {}),
    ContainerListTile('Bose Home Speaker', 'USD 279',
        Image.asset('assets/image/spek.png'), () {}),
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
          "Home",
          style: kbcstyle(context, 30, kblack),
          textAlign: TextAlign.right,
        ),
      ),
      body:  Scrollbar(
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
            children: [
               ListviewHorizontal(listt,5.2),
              const CategoryAndFavorites(),
              const SizedBox(height: 20),
              Text("Sales", style: kbstyle(context, 25)),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.count(
                  physics: const ScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                  shrinkWrap: true,
                  children: category
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
                                      child: Image.asset(
                                        e.img,
                                        fit: BoxFit.fitHeight,
                                      )),
                                ),
                                const SizedBox(height: 15),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(e.name,
                                      style: kstyle(context, 18, kblack)),
                                ),
                                const SizedBox(height: 7),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("\$${e.Price}",
                                      style: kstyle(context, 15, kPrimaryColor)),
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            print("ali");
                            MagicRouter.navigateTo(DetailsView(e.img,e.name,e.Price));
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// List.generate(4, (index) {
// return Padding(
// padding: const EdgeInsets.all(10.0),
// child: Container(
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage('assets/image/Vector.png'),
// fit: BoxFit.cover,
// ),
// borderRadius:
// BorderRadius.all(Radius.circular(20.0),),
// ),
// ),
// );
// },),
