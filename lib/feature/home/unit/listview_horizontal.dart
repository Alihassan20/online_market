import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constant/size.dart';
import '../../../widget/indicator.dart';
import '../../../widget/listview_listtile.dart';

class ListviewHorizontal extends StatefulWidget {
  List<Widget> list ;
  double num;
  ListviewHorizontal(this.list,this.num);

  @override
  State<ListviewHorizontal> createState() => _ListviewHorizontalState();
}

class _ListviewHorizontalState extends State<ListviewHorizontal> {


  int _curr = 0;


  // List<Widget> _buildPageIndicator() {
  //   List<Widget> list = [];
  //   for (int i = 0; i < listt.length; i++) {
  //     list.add(i == _curr ? indicator(true) : indicator(false));
  //   }
  //   return list;
  // }
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();

    return Column(
      children: [
        Align(
            child: Container(
                height: sizeFromHeight(context, widget.num),
                child: PageView(
                    children: widget.list,
                    scrollDirection: Axis.horizontal,
                    // reverse: true,
                    physics: const BouncingScrollPhysics(),
                    controller: controller,
                    onPageChanged: (num) {
                      setState(() {
                        _curr = num;
                      });
                    }))),
        const SizedBox(height: 10),
        SmoothPageIndicator(
          controller: controller,
          count:widget.list.length ,
          // effect:  widget.effect,
          effect: const WormEffect(
            dotHeight: 10,
            dotWidth: 10,
            type: WormType.thin,
            strokeWidth: 5,
          ),
        ),
      ],
    );
  }
}


// JumpingDotEffect(
// dotHeight: 13,
// dotWidth: 13,
// jumpScale: .7,
// verticalOffset: 12,
// ),




// Container(
//   height: 10,
//   child: Indicator(index),
// ),

// ScrollController scollBarController = ScrollController();

// Scrollbar(
// controller: scollBarController,
// thickness: 5,
// trackVisibility:true,
// showTrackOnHover:true,
// interactive:true,
// radius: const Radius.circular(15),
// isAlwaysShown: true,
// child: ListView(
// controller: scollBarController,
// shrinkWrap: true,
// scrollDirection: Axis.horizontal,
// children: [
// Row(
// children: [
// ContainerListTile('Bose Home Speaker','USD 279',Image.asset('assets/image/spek.png'),(){}),
// ContainerListTile('Bose Home Speaker','USD 279',Image.asset('assets/image/spek.png'),(){}),
// ContainerListTile('Bose Home Speaker','USD 279',Image.asset('assets/image/spek.png'),(){}),
// ],
// ),
// ],
// ),
// ),
