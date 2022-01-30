import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import '../../constant/color.dart';
import '../nav_bar/view.dart';

class Splashview extends StatelessWidget {
  const Splashview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SplashScreenView(
      navigateRoute: NavBarView(0),
      duration: 5000,
      imageSize: 130,
      imageSrc: "assets/image/Check.png",
      text: "Order Validate !",
      textType: TextType.ColorizeAnimationText,
      textStyle: const TextStyle(
        fontSize: 35.0,
      ),
      colors: const [
        kPrimaryColor,
        Color.fromRGBO(30, 76, 238, 1),
        Colors.blue,
      ],
      backgroundColor: Color.fromRGBO(30, 76, 238, 1),
    );
  }
}
