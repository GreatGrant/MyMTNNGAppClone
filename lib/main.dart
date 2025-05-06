import 'package:flutter/material.dart';
import 'package:my_mtn_app_clone/theme/app_theme.dart';
import 'package:my_mtn_app_clone/widgets/custom_appbar.dart';
import 'package:my_mtn_app_clone/widgets/promotional_slider.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _selectedIndex = 0;

  // void _onItemTapped(int index){
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
            userName: "Great Grant",
            phoneNumber: '08012345678',
            notificationCount: 2
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 14),
              PromoSlider(
                items: [
                  PromoItem(
                    title: "TopDeals4Me",
                    message: "Enjoy 30GB at ₦7,500. You get 20GB + EXTRA 10GB data BONUS.\nData is valid for 30days.",
                    buttonText: "Claim",
                    onButtonPressed: () {
                      print("Claim button pressed");
                    },
                  ),
                  PromoItem(
                    title: "SpecialOffer",
                    message: "Get 10GB for ₦3,000. Valid for 15 days!",
                    buttonText: "Claim",
                    onButtonPressed: () {
                      print("Claim Now button pressed");
                    },
                  ),
                ],
              ),
              // Balance Section
              // Card(
              //   child: Column(
              //     children: [
              //       Text("Airtime Balance: ₦2.91 (Bonus: ₦0)"),
              //       Text("Data Balance: 0 MB (Bonus: 0 MB)"),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //         children: [
              //           ElevatedButton(child: Text("Buy Airtime"), onPressed: () {}),
              //           ElevatedButton(child: Text("Buy Data"), onPressed: () {}),
              //         ],
              //       ),
              //       TextButton(child: Text("Refresh Balance"), onPressed: () {}),
              //       Text("No active data. Buy a bundle to enable rollover", style: TextStyle(color: Colors.red)),
              //     ],
              //   ),
              // ),
              // Promotional Banner
              // Navigation Tabs
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Text("MTN FibreX"), Text("Roaming"), Text("Share"), Text("Borrow"), Text("Offers", style: TextStyle(color: Colors.yellow)),
              //   ],
              // ),
              // // Marketplace Grid
              // GridView.count(
              //   crossAxisCount: 2,
              //   shrinkWrap: true,
              //   physics: NeverScrollableScrollPhysics(),
              //   children: [
              //     Card(child: Text("MTN FibreX")),
              //     Card(child: Text("Dominos Pizza")),
              //     // Add more items
              //   ],
              // ),
            ],
          ),
        ),
        // bottomNavigationBar: CurvedBottomNavigationBar(
        //     selectedIndex: _selectedIndex,
        //     onTap: _onItemTapped,
        //     items: [
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.home),
        //         label: "Home",
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.play_arrow),
        //         label: "Play",
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.store),
        //         label: "Marketplace",
        //         activeIcon: Container(
        //           padding: EdgeInsets.all(8),
        //           decoration: BoxDecoration(
        //             color: Colors.yellow[700],
        //             shape: BoxShape.circle,
        //           ),
        //           child: Icon(Icons.store, color: Colors.black),
        //         ),
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.help),
        //         label: "Help",
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.more_horiz),
        //         label: "More",
        //       ),
        //     ])
      ),
    );
  }
}

