import 'package:flutter/material.dart';
import 'config.dart';

void main() {
  runApp(const MaterialApp(home: ExpandedItem()));
}

class ExpandedItem extends StatefulWidget {
  const ExpandedItem({super.key});

  @override
  State<ExpandedItem> createState() => _ExpandedItemState();
}

class _ExpandedItemState extends State<ExpandedItem> {
  //static var itemImage = Image(image: AssetImage('assets/images/tony_stark_pop.jpeg'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Positioned(
            child: Container(
          padding: const EdgeInsets.only(top: 75, left: 15, right: 15),
          child: Image.network(
              'https://x5f9g8z5.rocketcdn.me/wp-content/uploads/2020/06/s-l1600-7.jpg'),
        )),
        Positioned(
          left: 0,
          right: 0,
          child: Stack(children: [
            Column(children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: const Text(
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                      'Naruto (Hokage) Selection AAA Anime Exclusive')),
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  alignment: Alignment.center,
                  child: const Text(
                      style: TextStyle(
                          fontSize: 17.5, fontWeight: FontWeight.w600),
                      '\$20.00')),
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                child: ExpansionTile(
                  iconColor: Config.tibsGreen,
                  textColor: Config.tibsGreen,
                  title: const Text(
                      style: TextStyle(fontWeight: FontWeight.w500),
                      'Product Details'),
                  children: <Widget>[
                    // ListTile(title: Text(
                    //   'Weight                                     0.5 lbs'
                    //   )),
                    //   ListTile(title: Text(
                    //   'License                                    Marvel'
                    //   )),
                    //   ListTile(title: Text(
                    //   'Dimensions                              6.25 x 4.5 x 3.5'
                    //   )),
                    //   ListTile(title: Text(
                    //   'Manufacturer                           Funko'
                    //   )),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Weight'),
                                SizedBox(height: 10),
                                Text('License'),
                                SizedBox(height: 10),
                                Text('Dimensions'),
                                SizedBox(height: 10),
                                Text('Manufacturer'),
                                SizedBox(height: 10)
                              ],
                            )),
                        Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('0.5 lbs'),
                                SizedBox(height: 10),
                                Text('Baruto'),
                                SizedBox(height: 10),
                                Text('6.25 x 4.5 x 3.5'),
                                SizedBox(height: 10),
                                Text('Funko'),
                                SizedBox(height: 10)
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton.extended(
                      onPressed: () => {},
                      backgroundColor: Config.tibsGreen,
                      label: const Text('Buy Now'),
                    ),
                    const SizedBox(width: 5),
                    FloatingActionButton.extended(
                      onPressed: () => {},
                      backgroundColor: Config.tibsGreen,
                      label: const Text('Add To Cart'),
                      icon: const Icon(Icons.add_shopping_cart),
                    ),
                    const QuantityButton()
                  ],
                ),
              )
            ])
          ]),
        ),
        Positioned(child: Container())
      ]),
    );
  }
}

class QuantityButton extends StatefulWidget {
  const QuantityButton({super.key});

  @override
  State<QuantityButton> createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<QuantityButton> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(
          onPressed: () => {
                if (quantity != 0)
                  {
                    setState(() {
                      quantity--;
                    })
                  }
                else
                  {
                    setState(() {
                      quantity = 0;
                    })
                  }
              },
          icon: const Icon(Icons.remove)),
      Text(style: TextStyle(color: Config.tibsGreen), quantity.toString()),
      IconButton(
          onPressed: () => {
                setState(() {
                  quantity++;
                })
              },
          icon: const Icon(Icons.add))
    ]);
  }
}
