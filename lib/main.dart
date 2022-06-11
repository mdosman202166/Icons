import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Center(child: Text("Flowers Details")),
        leading: Icon(Icons.more),
        actions: [
          Icon(Icons.computer_outlined),
          Icon(Icons.search),
          Icon(Icons.delete),
        ],
      ),
      body: Center(
        child: ListView(

          children: [

            Image.asset(
          "images/daliya.png",
          width: 600.0,
          height: 240.0,
          fit: BoxFit.cover),
            Center(
              child: Text(
                "Name: Red Dahlia (Asset)",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.redAccent,
                    fontSize: 30),
              ),
            ),
            Center(
              child: Text("Description",
              style: TextStyle(
                color: Colors.blue,
                  fontSize: 25.45
              ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text("Dahlia coccinea is a species of flowering plant in the daisy family Asteraceae. Its common name is red dahlia, although the flowers can be orange or occasionally yellow, as well as the more common red. The species is native to Mexico but has long been cultivated in other countries for its showy flowers.",
            //     style: TextStyle(
            //         fontSize: 20.25
            //     ),
            //   ),
            // ),
            Image.network(
                "https://gardeningstepbystep.com/wp-content/uploads/2020/08/dahlia-pinnata.jpg"),
                // width: 600.0,
                // height: 240.0,
                // fit: BoxFit.cover),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Name:Dahlia Pinnata (network)",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.redAccent,
                      fontSize: 30),
                ),
              ),
            ),
            Center(
              child: Text("Description",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25.45
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text("Dahlia pinnata is a perennial herbaceous plant with a rhizome and tuberous roots, reaching a height of 70 to 120, rarely 160 centimeters. The stem is erect being branched only in the inflorescence. The leaves are usually simple, with leaflets that are ovate and 5–10 cm long. The plant is slightly shaggy.The two to eight flower heads have a diameter of 6 to 10 centimeters on 5 to 15 centimeters long stems. The eight florets have a length of 3 to 5 centimeters, are ovate and coloured pink to deep purple.Dahlias are mid-year to late-year season flowers that grow in a lot of various colors and forms.",
            //     style: TextStyle(
            //         fontSize: 20.25
            //     ),
            //   ),
            // ),

          ],
        ),
      ),
    );
  }
}
