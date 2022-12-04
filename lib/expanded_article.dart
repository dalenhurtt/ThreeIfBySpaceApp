import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ExpandedArticle()));
}

class ExpandedArticle extends StatefulWidget {
  const ExpandedArticle({super.key});

  @override
  State<ExpandedArticle> createState() => _ExpandedArticleState();
}

// This widget is the root of your application.
class _ExpandedArticleState extends State<ExpandedArticle> {
  @override
  Widget build(BuildContext context) {
    return 
        Scaffold(body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10.0),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Comic Reviews",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://x5f9g8z5.rocketcdn.me/wp-content/uploads/2022/10/Fanhome-Star-Wars-Encyclopedia.jpg"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "Fanhome Announces THE STAR WARS ENCYCLOPEDIA 90 Volume Collection",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        // skeleton of body
                        //The article text will go here
                        // Need to add variable to get data from database to display in this text widget
                        child: Text(
                          "October 10, 2022, New York – Fanhome, the leader in subscription-based collections and partworks models, today unveiled The Star Wars Encyclopedia, a complete volume of work that covers the chronology of the Skywalker Saga, from Star Wars: The Phantom Menace to Star Wars: The Rise of Skywalker, as well as the stories told in Star Wars: The Clone Wars and The Mandalorian, both streaming on Disney+. The Star Wars Encyclopedia is a monthly subscription with the first shipment containing two books and every shipment afterward containing four books each. The exclusive collector’s edition is currently on sale at the introductory price of \$7.99.",
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
