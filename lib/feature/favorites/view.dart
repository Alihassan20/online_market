import 'package:flutter/material.dart';
import 'package:online_market/core/model/home_model.dart';

import '../../constant/color.dart';
import '../../constant/style.dart';
import '../../widget/cart_items_search.dart';

class FavoritesView extends StatefulWidget {
  FavoritesView({Key? key}) : super(key: key);

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {

  List category_search = [
    ListOfCategory(
        img: 'assets/image/2.png', name: 'Google Home mini', Price: 49),
    ListOfCategory(
        img: 'assets/image/laptop.png', name: 'Google Home mini', Price: 49),
    ListOfCategory(
        img: 'assets/image/Monitor.png', name: 'Google Home mini', Price: 49),
    ListOfCategory(
        img: 'assets/image/Smartphone.png',
        name: 'Google Home mini',
        Price: 49),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kblack, size: 35),
        elevation: 0,
        backgroundColor: kwhite,
      ),
      body: (Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, bottom: 10),
            child: Text(
              "Favorites",
              style: kbcstyle(context, 30, kblack),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: category_search.length,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                key: Key('item ${category_search[index]}'),

                onDismissed: (DismissDirection direction) {
                  setState(() {
                    category_search.removeAt(index);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: const Text("deleted"),
                      action: SnackBarAction(
                        label: "Undo",
                        onPressed: () {
                          setState(() {
                            category_search.insert(
                                index, category_search[index]);
                          });
                        },
                      ),
                    ));
                  });
                },

                confirmDismiss: (DismissDirection direction) async {
                  await showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          content: Text(
                              "Are You Sure You Want To Delete This ${category_search[index].name}"),
                          actions: [
                            FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text("Cancel")),
                            FlatButton(
                                onPressed: () {
                                  setState(() {
                                    print(index);
                                    final item = category_search[index];
                                    category_search.remove(item);
                                    print(category_search);
                                    Navigator.of(context).pop();
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                      content: const Text("deleted"),
                                      action: SnackBarAction(
                                        label: "Undo",
                                        onPressed: () {
                                          print("sfs");
                                          setState(() {
                                            category_search.insert(
                                                index, item);
                                          });
                                        },
                                      ),
                                    ));
                                  });
                                },
                                child: const Text("Delete")),
                          ],
                        );
                      });
                },
                background: Container(
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  alignment: Alignment.center,
                  child: const Icon(Icons.delete_forever),
                ),
                child: GestureDetector(
                    onTap: () {},
                    child: CartSearch(
                        category_search[index].img,
                        category_search[index].name,
                        'USD ${category_search[index].Price}')),
              );
            },
          )),
        ],
      )),
    );
  }
}
// Expanded(
// child: ListView(
// children: category_search
//     .map<Widget>(
// (e) => GestureDetector(
// child: CartSearch(e.img, e.name, 'USD ${e.Price}'),
// onTap: () {
// },
// ),
// )
// .toList(),
// ),
// ),
