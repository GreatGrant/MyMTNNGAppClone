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
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          userName: "Great Grant",
          phoneNumber: '08012345678',
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              PromoSlider(
                items: [
                  PromoItem(
                    title: "TopDeals4Me",
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
              Center(
                child: InkWell(
                  onTap: () {
                    print('Refresh tapped');
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Refresh Balance',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 6),
                      Icon(Icons.sync, color: Color(0xFFFFCB05), size: 16),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
