import 'package:flutter/material.dart';
import 'package:threeifbyspace/tibs_home.dart';

void main() {
  runApp(MaterialApp(
    home: TibsHome(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      //_counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: const BruhState(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// This is my custom widget that has a state that can change
class BruhState extends StatefulWidget {
  const BruhState({super.key});

  @override
  State<BruhState> createState() => _BruhStateState();
}

// This is the state for BruhState
class _BruhStateState extends State<BruhState> {
  String t = "bruh";

  @override
  Widget build(BuildContext context) {
    // Build a grid view
    return GridView.builder(

        // Grid delegate tells us how to actually format the grid axis
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // Set how the grid is formatted
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5),

        // set padding on all sides for each grid element
        padding: const EdgeInsets.all(50),

        // itemBuilder is a builder for each element/item on the grid.
        // I can set "itemCount: #," if I want to set the max items in the grid.
        // It will keep building what I put in itemBuilder's function
        itemBuilder: (BuildContext context, int i) {
          // Center() centers the single widget inside of it
          return Center(
            // Inside the center() widget is a column of items
            child: Column(
              children: [
                // Inside the column are two things, a text line and an expanded()
                // widget
                Text(
                  "Item number $i",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                // Expanded() expands the child to fill all of the grid space
                Expanded(
                  // Add an empty container with a border just to show the empty
                  // space
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),

                    // Add trailing commas for the end of lists otherwise the auto
                    // formatter messes up the indentation for some reason
                  ),
                ),
              ],
            ),
          );
        });
  }
}
