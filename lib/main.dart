import 'package:flutter/material.dart';
import 'package:my_mtn_app_clone/theme/app_theme.dart';
import 'package:my_mtn_app_clone/widgets/custom_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      theme: buildLightAppTheme(),   // Light theme
      darkTheme: buildDarkAppTheme(), // Dark theme
      themeMode: ThemeMode.system,    // Use system theme mode
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
            userName: "GreatGrant",
            phoneNumber: '080123456789',
            notificationCount: 2
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
      ),
    );
  }
}

