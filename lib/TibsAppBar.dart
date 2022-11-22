import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: TibsAppBar()));
}

class TibsAppBar extends StatefulWidget {
  const TibsAppBar({super.key});

  @override
  State<TibsAppBar> createState() => _TibsAppBarState();
}

class _TibsAppBarState extends State<TibsAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF88B434),
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
