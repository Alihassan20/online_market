import 'package:flutter/material.dart';
import 'package:online_market/constant/color.dart';

class Search extends StatelessWidget {
  var search;
  Search(this.search);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 15),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                  spreadRadius: 0.4)
            ]),
        child: TextFormField(
          style: const TextStyle(color: Colors.black),
          decoration:  InputDecoration(
            focusedBorder: const OutlineInputBorder(
                borderRadius:
                BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.white,
                )),
            errorBorder: const OutlineInputBorder(
                borderRadius:
                BorderRadius.all(Radius.circular(20))),
            filled: true,
            fillColor: const Color.fromRGBO(224, 236, 248, 1),
            border:OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
            hintText:search,
            prefixIcon: const Icon(
              Icons.search,
              color: kPrimaryColor,
            ),
            hintStyle: const TextStyle(color: kPrimaryColor,fontSize: 20),
          ),
          keyboardType: TextInputType.text,
          validator: (val) {
            if (val!.isEmpty) {
              return 'Valid Search';
            }
            return null;
          },
          onSaved: (val) {
            search = val!;
          },
        ),
      ),
    );
  }
}