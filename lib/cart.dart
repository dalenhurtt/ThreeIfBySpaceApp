import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Three If By Space',
        theme: ThemeData(
            appBarTheme: AppBarTheme(
          color: const Color(0xFF88B434),
        )),
        home: Scaffold(
          appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.menu),
                color: Colors.black,
                onPressed: () {},
              ),
              title: Image.asset('assets/tibs-3.png',
                  fit: BoxFit.contain, height: 50),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.shopping_cart_sharp,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ]),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              children: <Widget>[
                Text(
                  "Shopping Cart",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Expanded(
                  child: ListView(children: <Widget>[
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.threeifbyspace.net/wp-content/uploads/2022/02/bfddd16f94a34277ac370bfe4c2852e9lg-250x250.jpg")),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: <Widget>[
                            Container(
                                width: 150,
                                child: Text(
                                    "Fairy Tail Jellal Fernandes Pop! Vinyl Figure")),
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.grey,
                                  ),
                                  child: IconButton(
                                      icon: Icon(Icons.remove),
                                      color: Colors.black,
                                      onPressed: () {}),
                                ),
                                Text("1",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.grey,
                                  ),
                                  child: IconButton(
                                      icon: Icon(Icons.add),
                                      color: Colors.black,
                                      onPressed: () {}),
                                ),
                                Text("\$17.50",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.threeifbyspace.net/wp-content/uploads/2022/02/6a66286b2b244b128963acebfa2579b7lg-250x250.jpg")),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: <Widget>[
                            Container(
                                width: 150,
                                child: Text(
                                    "Fairy Tail Mavis Vermillion Pop! Vinyl Figure")),
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.grey,
                                  ),
                                  child: IconButton(
                                      icon: Icon(Icons.remove),
                                      color: Colors.black,
                                      onPressed: () {}),
                                ),
                                Text("1",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.grey,
                                  ),
                                  child: IconButton(
                                      icon: Icon(Icons.add),
                                      color: Colors.black,
                                      onPressed: () {}),
                                ),
                                Text("\$17.50",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.threeifbyspace.net/wp-content/uploads/2022/03/240210a70f03499094607b021ba00b5blg-250x250.webp")),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: <Widget>[
                            Container(
                                width: 150,
                                child: Text(
                                    "Hunter x Hunter Killua Zoldyck Funko Pop - AAA Anime Exclusive (Common)")),
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.grey,
                                  ),
                                  child: IconButton(
                                      icon: Icon(Icons.remove),
                                      color: Colors.black,
                                      onPressed: () {}),
                                ),
                                Text("6",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.grey,
                                  ),
                                  child: IconButton(
                                      icon: Icon(Icons.add),
                                      color: Colors.black,
                                      onPressed: () {}),
                                ),
                                Text("\$105.00",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.threeifbyspace.net/wp-content/uploads/2022/07/2b3f58cf9e054cc0bf6f8a954dcbabeflg-250x250.jpg")),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: <Widget>[
                            Container(
                                width: 150,
                                child: Text(
                                    "Genshin Impact Paimon Pop! Vinyl Figure")),
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.grey,
                                  ),
                                  child: IconButton(
                                      icon: Icon(Icons.remove),
                                      color: Colors.black,
                                      onPressed: () {}),
                                ),
                                Text("4",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.grey,
                                  ),
                                  child: IconButton(
                                      icon: Icon(Icons.add),
                                      color: Colors.black,
                                      onPressed: () {}),
                                ),
                                Text("\$70.00",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Subtotal: \$210.00",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text("Tax and Shipping: \$16.70",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text("TOTAL: \$226.70",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                        MaterialButton(
                            onPressed: () {},
                            color: const Color(0xFF88B434),
                            child: Text("CHECKOUT",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)))
                      ],
                    )
                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}
