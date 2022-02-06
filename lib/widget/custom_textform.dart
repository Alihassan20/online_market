import 'package:flutter/material.dart';
import 'package:online_market/constant/color.dart';

class TextFormByField extends StatelessWidget {
  TextInputType? inputTxt;
  final Color? color;
  final String? hint;
  final String? hinnt;
  Icon? icon;
  Widget? row;
  bool secure;
  int? lines;
  Key? key;

  final String? Function(String?)? validator;
  final Function(String?)? onSaved;

  TextFormByField(
      {this.key,this.color,this.lines,required this.secure,this.hinnt, this.hint, this.validator, this.onSaved, this.inputTxt,this.icon,this.row});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: TextFormField(
        key: key,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.white70,
                )),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.white,
                )),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            filled: true,
            fillColor: color,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.white,
                )),
            labelText: hint,
            hintText: hinnt,
            prefixIcon: icon,
            suffixIcon: row,

            labelStyle:
            const TextStyle(fontWeight: FontWeight.bold, color: kwhite),
          ),
          keyboardType: inputTxt,
          maxLines:lines ,
          validator: validator,
          obscureText: lines==1?secure:!secure,
          onSaved: onSaved),
    );
  }
}
