// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// import '../../../constant/color.dart';
// class BottomNavigationbarCustom extends StatefulWidget {
//   const BottomNavigationbarCustom({Key? key}) : super(key: key);
//
//   @override
//   _BottomNavigationbarCustomState createState() => _BottomNavigationbarCustomState();
// }
//
// class _BottomNavigationbarCustomState extends State<BottomNavigationbarCustom> {
//   int selectedPage = 0;
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items:   const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: FaIcon(FontAwesomeIcons.home),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: FaIcon(FontAwesomeIcons.search),
//           label: 'Search',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.add_shopping_cart),
//           label: 'Chart',
//         ),
//         BottomNavigationBarItem(
//           icon: FaIcon(FontAwesomeIcons.user),
//           label: 'User',
//         ),
//       ],
//       currentIndex: selectedPage,
//       selectedItemColor: kPrimaryColor,
//       unselectedItemColor: kblack,
//       onTap: (index){
//         setState(() {
//           selectedPage = index;
//         });
//       },
//     );
//   }
// }
//
//
