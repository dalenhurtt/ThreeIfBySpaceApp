import 'dart:html';

import 'package:flutter/material.dart';

class MainAppBar extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF88B434),
      leading: IconButton(
        icon: Icon(Icons.menu),
        color: Colors.black,
        onPressed: () {},
      ),
      title: Image.asset('assets/tibs-3.png', fit: BoxFit.contain, height: 50),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.shopping_cart_sharp, color: Colors.black),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
