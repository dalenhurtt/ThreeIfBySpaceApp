import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: TibsHome()));
}

class TibsHome extends StatefulWidget {
  const TibsHome({super.key});

  @override
  State<TibsHome> createState() => _TibsHomeState();
}

// This widget is the root of your application.
class _TibsHomeState extends State<TibsHome> {
  List<String> articleType = [
    'Fresh News',
    'Hot News',
    'Trending',
    'Movie Review'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 1,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Fresh News",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://x5f9g8z5.rocketcdn.me/wp-content/uploads/2022/10/Fanhome-Star-Wars-Encyclopedia.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "This is the botom of the image called description",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Hot News",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://x5f9g8z5.rocketcdn.me/wp-content/uploads/2022/10/Picture2-e1665515736907.jpg.webp"),
                          fit: BoxFit.cover)),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "This is the botom of the hot news",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Trending",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://x5f9g8z5.rocketcdn.me/wp-content/uploads/2022/10/Fanhome-Star-Wars-Encyclopedia.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "This is the botom of trending",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Movies Review",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://x5f9g8z5.rocketcdn.me/wp-content/uploads/2022/11/BP2_LOGO46_FINOUT_05-03-21.FLAT_.jpg.webp"),
                          fit: BoxFit.cover)),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "This is the botom of movies review",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
