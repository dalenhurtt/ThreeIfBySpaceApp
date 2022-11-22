import 'dart:html';

import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}
class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF88B434),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        color: Colors.black,
        onPressed: () {},
      ),
      title: Image.asset('assets/tibs-3.png', fit: BoxFit.contain, height: 50),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.shopping_cart_sharp, color: Colors.black),
          onPressed: () {},
        ),
      ],
    );
  }
}
