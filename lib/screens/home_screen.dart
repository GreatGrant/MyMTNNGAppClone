import 'package:flutter/material.dart';
import 'package:my_mtn_app_clone/screens/play_screen.dart';
import 'package:my_mtn_app_clone/theme/app_colors.dart';
import 'package:my_mtn_app_clone/widgets/action_button.dart';
import 'package:my_mtn_app_clone/widgets/app_drawer.dart';
import 'package:my_mtn_app_clone/widgets/balance_slider.dart';
import 'package:my_mtn_app_clone/widgets/bottom_promotional_slider.dart';
import 'package:my_mtn_app_clone/widgets/custom_appbar.dart';
import 'package:my_mtn_app_clone/widgets/divider_text.dart';
import 'package:my_mtn_app_clone/widgets/promotional_slider.dart';
import 'package:my_mtn_app_clone/widgets/scrollable_tab_grid.dart';
import '../widgets/custom_bottom_nav_bar.dart';
import '../widgets/explore_action_button.dart';
import 'help_screen.dart';
import 'more_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<NavBarItem> _items = [
    NavBarItem(icon: Icons.home, label: 'Home'),
    NavBarItem(icon: Icons.smart_display, label: 'Play'),
    NavBarItem(icon: Icons.help, label: 'Help'),
    NavBarItem(icon: Icons.more_horiz, label: 'More'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: const CustomAppBar(
        userName: "Great Grant",
        phoneNumber: '08012345678',
        notificationCount: 2,
      ),
      drawer: AppDrawer(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: AppColors.yellow700,
        elevation: 8,
        onPressed: () {
          print("Center button tapped");
        },
        child: const Icon(Icons.widgets, color: Colors.black),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavBar(
        items: _items,
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        centerIcon: Icons.widgets,
        onCenterTap: () {
          print("Center nav icon tapped");
        },
      ),
    );
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return _buildHomeScreen();
      case 1:
        return const PlayScreen();
      case 2:
        return const HelpScreen();
      case 3:
        return const MoreScreen();
      default:
        return const Center(child: Text("Unknown Tab"));
    }
  }

  Widget _buildHomeScreen() {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Column(
              children: [
                const SizedBox(height: 14),
                PromoSlider(
                  items: [
                    PromoItem(
                      title: "TopDeals4Me",
                      message: "Enjoy 30GB at ₦7,500...",
                      buttonText: "Claim",
                      onButtonPressed: () {},
                    ),
                    PromoItem(
                      title: "SpecialOffer",
                      message: "Get 10GB for ₦3,000...",
                      buttonText: "Claim",
                      onButtonPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Center(
                  child: InkWell(
                    onTap: () => print('Refresh tapped'),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Refresh Balance', style: TextStyle(color: Colors.grey)),
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
                const BottomPromoSlider(
                  imageUrls: [
                    "assets/images/Independence-Day-Promo.png",
                    "assets/images/MTNSkillsAcademyPlus.jpeg"
                  ],
                ),
                const SizedBox(height: 16),
                const DividerText(text: 'Explore'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16.0),
                  child: Row(
                    children: [
                      ExploreActionButton(icon: Icons.gamepad, label: "Free game", onTap: () {}),
                      const SizedBox(width: 16),
                      ExploreActionButton(icon: Icons.local_offer, label: "Special Offer", onTap: () {}),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

