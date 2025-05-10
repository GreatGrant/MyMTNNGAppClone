import 'package:flutter/material.dart';
import 'package:my_mtn_app_clone/theme/app_colors.dart';

class NavBarItem {
  final IconData icon;
  final String label;

  NavBarItem({required this.icon, required this.label});
}

class CustomBottomNavBar extends StatelessWidget {
  final List<NavBarItem> items;
  final int selectedIndex;
  final void Function(int index) onItemSelected;
  final IconData centerIcon;
  final VoidCallback onCenterTap;

  const CustomBottomNavBar({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onItemSelected,
    required this.centerIcon,
    required this.onCenterTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: const Color(0xFF1C1C1E),
        notchMargin: 12,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < items.length ~/ 2; i++)
                _buildItem(i, items[i]),
              const SizedBox(width: 40), // Space for FAB
              for (int i = items.length ~/ 2; i < items.length; i++)
                _buildItem(i, items[i]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(int index, NavBarItem item) {
    final isSelected = index == selectedIndex;
    return GestureDetector(
      onTap: () => onItemSelected(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(item.icon, color: isSelected ? AppColors.yellow700 : Colors.grey),
          const SizedBox(height: 4),
          Text(
            item.label,
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? AppColors.yellow700 : Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
