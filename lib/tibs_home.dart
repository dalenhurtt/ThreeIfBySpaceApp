import 'package:flutter/material.dart';

void main() {
  runApp(const TibsHome());
}

class TibsHome extends StatelessWidget {
  const TibsHome({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('TIBS Home'),
            centerTitle: true,
            backgroundColor: Colors.lightGreen[600]),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(30),
          crossAxisSpacing: 10,
          mainAxisSpacing: 60,
          crossAxisCount: 1,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              //color: Colors.grey[200],
              child: Column(
                children: [
                  const Text(
                    "Fresh News",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.grey[200],
              child: const Text('Trending',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.grey[200],
              child: const Text('Some Other News',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.grey[200],
              child: const Text(
                'Movies Review',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.grey[200],
              child: const Text(
                '.........',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}
