import 'package:flutter/material.dart';
import 'package:my_mtn_app_clone/theme/app_theme.dart';
import 'package:my_mtn_app_clone/widgets/action_button.dart';
import 'package:my_mtn_app_clone/widgets/balance_slider.dart';
import 'package:my_mtn_app_clone/widgets/bottom_promotional_slider.dart';
import 'package:my_mtn_app_clone/widgets/custom_appbar.dart';
import 'package:my_mtn_app_clone/widgets/divider_text.dart';
import 'package:my_mtn_app_clone/widgets/promotional_slider.dart';
import 'package:my_mtn_app_clone/widgets/scrollable_tab_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      theme: buildLightAppTheme(),
      darkTheme: buildDarkAppTheme(),
      themeMode: ThemeMode.system,
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
          notificationCount: 2,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 14),
              PromoSlider(
                items: [
                  PromoItem(
                    title: "TopDeals4Me",
                    message:
                    "Enjoy 30GB at ₦7,500. You get 20GB + EXTRA 10GB data BONUS.\nData is valid for 30days.",
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
              const SizedBox(height: 12),
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
              const SizedBox(height: 12),
              const BalanceSlider(),
              const SizedBox(height: 12),
              const ActionButtonRow(),
              const SizedBox(height: 12),
              const DividerText(text: 'Marketplace'),
              const ScrollableTabGrid(),
              const SizedBox(height: 16),
              const BottomPromoSlider(imageUrls: ["assets/images/Independence-Day-Promo.png", "assets/images/MTNSkillsAcademyPlus.jpeg"]),
              const SizedBox(height: 16),
              const DividerText(text: 'Explore')
            ],
          ),
        ),
      ),
    );
  }
}
