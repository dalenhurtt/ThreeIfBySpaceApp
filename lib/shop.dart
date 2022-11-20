import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _Shop();
}

class _Shop extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 20,
      crossAxisCount: 2,
      childAspectRatio: 0.80, //Needed to avoid bottom overflow
      children: <Widget>[
        Column(children: const [
          Image(
            image: AssetImage('assets/Images/img1.jpeg'),
            fit: BoxFit.cover,
          ),
          Text("Demon Slayer: Kanao Tsuyuri Ichiban Statue",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          Text('Price \$35.99', style: TextStyle(color: Colors.green))
        ]),
        Column(children: const [
          Image(
            image: AssetImage('assets/Images/img2.jpeg'),
            fit: BoxFit.cover,
          ),
          Text("My Hero Academia Izuku Midoriya Go and Go! Ichiban Statue",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          Text('Price \$39.99', style: TextStyle(color: Colors.green))
        ]),
        Column(children: const [
          Image(
            image: AssetImage('assets/Images/img3.jpeg'),
            fit: BoxFit.cover,
          ),
          Text("My Hero Academia Izuku Midoriya I’m Ready! Ichiban Statue",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          Text('Price \$89.99', style: TextStyle(color: Colors.green))
        ]),
        Column(children: const [
          Image(
            image: AssetImage('assets/Images/img4.jpeg'),
            fit: BoxFit.cover,
          ),
          Text("Demon Slayer: Tanjiro Kamado Ichiban Statue",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          Text('Price \$35.99', style: TextStyle(color: Colors.green))
        ]),
        Column(children: const [
          Image(
            image: AssetImage('assets/Images/img5.jpeg'),
            fit: BoxFit.cover,
          ),
          Text("Demon Slayer: Shinobu Kocho Ichiban Statue",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          Text('Price \$35.99', style: TextStyle(color: Colors.green))
        ]),
        Column(children: const [
          Image(
            image: AssetImage('assets/Images/img6.jpeg'),
            fit: BoxFit.cover,
          ),
          Text("My Hero Academia Hawks ARTFX J 1:8 Scale Statue",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          Text('Price \$180.00', style: TextStyle(color: Colors.green))
        ]),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.teal[200],
          child: const Text('Heed not the rabble'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.teal[300],
          child: const Text('Sound of screams but the'),
        ),
      ],
    );
  }
}
