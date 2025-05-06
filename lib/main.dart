import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.yellow,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Y'ello, Great Grant\n08169639766"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          Stack(
            children: [
              IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  constraints: BoxConstraints(minWidth: 16, minHeight: 16),
                  child: Text('2', style: TextStyle(color: Colors.white, fontSize: 10), textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Balance Section
            Card(
              child: Column(
                children: [
                  Text("Airtime Balance: ₦2.91 (Bonus: ₦0)"),
                  Text("Data Balance: 0 MB (Bonus: 0 MB)"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(child: Text("Buy Airtime"), onPressed: () {}),
                      ElevatedButton(child: Text("Buy Data"), onPressed: () {}),
                    ],
                  ),
                  TextButton(child: Text("Refresh Balance"), onPressed: () {}),
                  Text("No active data. Buy a bundle to enable rollover", style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
            // Promotional Banner
            Container(
              color: Colors.yellow[700],
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text("Enjoy 30GB at ₦7,500. You get 20GB + EXTRA 10GB data Bonus."),
                  Text("Data is valid for 30 days."),
                  ElevatedButton(child: Text("Claim"), onPressed: () {}),
                ],
              ),
            ),
            // Navigation Tabs
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("MTN FibreX"), Text("Roaming"), Text("Share"), Text("Borrow"), Text("Offers", style: TextStyle(color: Colors.yellow)),
              ],
            ),
            // Marketplace Grid
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Card(child: Text("MTN FibreX")),
                Card(child: Text("Dominos Pizza")),
                // Add more items
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: "Play"),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Marketplace"),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: "Help"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
        ],
      ),
    );
  }
}