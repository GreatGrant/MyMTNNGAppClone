import 'package:flutter/material.dart';
import 'package:my_mtn_app_clone/theme/app_theme.dart';
import 'package:my_mtn_app_clone/widgets/balance_slider.dart';
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
              const SliderItem(
                phoneNumber: "08012345678"),

            ],
          ),
        ),
      ),
    );
  }
}

