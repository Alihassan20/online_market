import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_market/feature/home/unit/bottom_navigationbar.dart';
import 'package:online_market/feature/home/view.dart';

import '../../constant/color.dart';
import '../cart/view.dart';
import '../search/view.dart';

class NavBarView extends StatefulWidget {
  int i;
  NavBarView(this.i);

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  // int selectedPage = 0;

  final List<Widget> _pageOptions = [
    HomeView(),
    SearchView(),
    Cart(),
    Text('A'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[widget.i],
      bottomNavigationBar: BottomNavigationBar(
          items:   const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.shoppingCart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user),
              label: 'User',
            ),
          ],
          currentIndex: widget.i,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: kblack,
          onTap: (index){
            setState(() {
              widget.i = index;
            });
          },
      ),
    );
  }
}
