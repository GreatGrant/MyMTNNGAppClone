import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:my_mtn_app_clone/theme/app_colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final VoidCallback? onFabPressed;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    this.onFabPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Background container for the navigation bar
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: AppColors.darkCard,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
        ),

        // CurvedNavigationBar with dummy items (to satisfy the package requirement)
        CurvedNavigationBar(
          height: 70,
          color: Colors.transparent,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.transparent,
          items: List.generate(4, (index) => const Icon(Icons.circle, size: 1)),
          onTap: onTap,
          animationDuration: const Duration(milliseconds: 300),
          index: currentIndex,
        ),

        // Actual navigation items with labels
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(context, icon: Icons.home, label: "Home", index: 0),
              _buildNavItem(context, icon: Icons.play_arrow, label: "Play", index: 1),
              const SizedBox(width: 60), // Space for FAB
              _buildNavItem(context, icon: Icons.help, label: "Help", index: 2),
              _buildNavItem(context, icon: Icons.more_horiz, label: "More", index: 3),
            ],
          ),
        ),

        // Floating action button
        Positioned(
          left: MediaQuery.of(context).size.width / 2 - 30,
          bottom: 35,
          child: FloatingActionButton(
            onPressed: onFabPressed,
            backgroundColor: AppColors.yellow700,
            child: const Icon(Icons.add, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _buildNavItem(BuildContext context, {required IconData icon, required String label, required int index}) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 30,
            color: currentIndex == index ? AppColors.yellow700 : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
              color: currentIndex == index ? AppColors.yellow700 : Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}