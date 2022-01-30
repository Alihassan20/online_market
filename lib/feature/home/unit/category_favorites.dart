import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_market/feature/favorites/view.dart';
import 'package:online_market/navigate/route.dart';

import '../../../constant/size.dart';
import '../../../widget/colum_feature.dart';
import '../../category/view.dart';

class CategoryAndFavorites extends StatelessWidget {
  const CategoryAndFavorites({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: sizeFromHeight(context, 25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColumFeature('Categories',(){
            MagicRouter.navigateTo( CategoryScreen());
          },FontAwesomeIcons.bars),
           SizedBox(width: sizeFromWidth(context, 8)),
          ColumFeature('Favorites',(){
            MagicRouter.navigateTo( FavoritesView());

          },FontAwesomeIcons.star)

        ],),
    );
  }
}
