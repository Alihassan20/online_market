import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_market/feature/complete_order/view.dart';
import 'package:online_market/navigate/route.dart';

import '../../constant/color.dart';
import '../../constant/style.dart';
import '../../core/model/home_model.dart';
import '../../widget/cart_items_cart.dart';
import '../../widget/cart_items_search.dart';
import '../../widget/custom_button.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  List category_cart = [
    ListOfCategory(img: 'assets/image/2.png', name: 'Google Home', Price: 20),
    ListOfCategory(
        img: 'assets/image/laptop.png', name: 'Google mini', Price: 20),
    ListOfCategory(
        img: 'assets/image/Monitor.png', name: 'Google mini', Price: 20),
    ListOfCategory(
        img: 'assets/image/Smartphone.png',
        name: 'Google Home ',
        Price: 20),
  ];

  int num = 1;
  int sum = 0;
  ScrollController scollBarController = ScrollController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kblack),
        elevation: 0,
        backgroundColor: kwhite,
        title: Text(
          "Shopping Cart",
          style: kbcstyle(context, 30, kblack),
          textAlign: TextAlign.right,
        ),
      ),
      body: Scrollbar(
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
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: category_cart.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Dismissible(
                        key: Key('item ${category_cart[index]}'),
                        onDismissed: (DismissDirection direction) {
                          setState(() {
                            category_cart.removeAt(index);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: const Text("deleted"),
                              action: SnackBarAction(
                                label: "Undo",
                                onPressed: () {
                                  setState(() {
                                    category_cart.insert(
                                        index, category_cart[index]);
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
                                      "Are You Sure You Want To Delete This ${category_cart[index].name}"),
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
                                            final item = category_cart[index];
                                            category_cart.remove(item);
                                            print(category_cart);
                                            Navigator.of(context).pop();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                              content: const Text("deleted"),
                                              action: SnackBarAction(
                                                label: "Undo",
                                                onPressed: () {
                                                  print("sfs");
                                                  setState(() {
                                                    category_cart.insert(
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
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                          alignment: Alignment.center,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Delete',
                                style: kbcstyle(context, 25, Colors.redAccent),
                              ),
                              const Icon(
                                Icons.delete_forever,
                                color: Colors.redAccent,
                                size: 40,
                              ),
                            ],
                          ),
                        ),
                        child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    CartCart(
                                        category_cart[index].img,
                                        category_cart[index].name,
                                        'USD ${category_cart[index].Price}'),
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              num++;
                                              category_cart[index].Price=category_cart[index].Price+20;
                                            });
                                          },
                                          icon: const FaIcon(
                                            FontAwesomeIcons.plusCircle,
                                            color: Colors.grey,
                                          )),
                                      Container(
                                        child: Text(" x${num}"),
                                        color: kPrimaryColor.withOpacity(0.2),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            if (num > 1) {
                                              setState(() {
                                                num--;
                                                print(num);

                                                category_cart[index].Price=category_cart[index].Price-20;

                                              });
                                            }
                                          },
                                          icon: const FaIcon(
                                              FontAwesomeIcons.minusCircle,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ],
                  );
                },
              ),
              const Divider(),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Total", style: kbcstyle(context, 20, kblack)),
                  Text(
                    'USD ${category_cart.map<int>((e) => e.Price).reduce((value1, value2) => value1+value2)}',
                    style: kcstyle(context, 20, kPrimaryColor),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustomButton(() {
                MagicRouter.navigateTo(CompleteOrder());
              }, Text("Complete Order", style: kbcstyle(context, 20, kwhite)),
                  kPrimaryColor),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
