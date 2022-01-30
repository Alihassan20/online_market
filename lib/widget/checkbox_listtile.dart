import 'package:flutter/material.dart';
import 'package:online_market/constant/style.dart';

import '../constant/color.dart';
class CheckBoxField extends StatefulWidget {
  final Map<String, bool> List ;
  CheckBoxField({required this.List});

  @override
  State<CheckBoxField> createState() => _CheckBoxFieldState();

}

class _CheckBoxFieldState extends State<CheckBoxField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        children: widget.List.keys.map((String key) {
          return  Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: CheckboxListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                title:  Text(key,style: kbcstyle(context, 18, kblack),),
                value: widget.List[key],
                activeColor: kPrimaryColor,
                checkColor: Colors.white,
                onChanged: ( value) {
                  setState(() {
                    widget.List[key] = value!;
                  });
                },
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}