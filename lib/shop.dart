import 'package:flutter/material.dart';
// import 'package:threeifbyspace/tibs_home.dart';
import 'dart:developer';

import 'shop_items.dart';
void main() {
  runApp(const MaterialApp(
  // home: TibsHome(),
    home: MyShop(
    categoryId: '9283',
    )));
}

class MyShop extends StatefulWidget {
  final String categoryId;

  const MyShop({Key? key, required this.categoryId}) : super(key: key);

  @override
  State<MyShop> createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  // _MyShopState({widget.categoryId});

  @override
  Widget build(BuildContext context) {
    // List myproducts_list = getProducts('9283') as List;
    // print(myproducts_list[0].id);

    return Scaffold(
        //Lets get the data from json file
        body: FutureBuilder(
            future: getProducts(widget.categoryId),
            builder: (context, data) {
              if (data.hasError) {
                return Center(child: Text("${data.error}"));
              } else if (data.hasData) {
                var items = data.data as List<Product>;
                return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 20,
                            crossAxisCount: 2,
                            childAspectRatio:
                                0.80), //Needed to avoid bottom overflow

                    itemCount: items == null ? 0 : items.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Image(
                                image: NetworkImage(
                                    items[index].images[0].src.toString()),
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(items[index].name.toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold)),
                            Text(
                                //need to uodate this and get all the categories labesl from the
                                // categories list

                                "${items[index].categoriesName.join(",").toString()}",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 10,
                                    color: Color.fromARGB(210, 41, 41, 43))),
                            // Row(
                            //   children: [
                            //     Center(
                            //       child:
                            Text("\$ ${items[index].price.toString()}",
                                style: const TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold)),
                            //     )
                            //   ],
                            // )       //For implementing the actual price and sale price in future
                          ],
                        ),
                      );
                    });
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }
}
