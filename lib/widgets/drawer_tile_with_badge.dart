import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class DrawerTileWithBadge extends StatelessWidget {
  final IconData icon;
  final String title;
  final String badgeCount;
  final VoidCallback? onTap;

  const DrawerTileWithBadge({
    super.key,
    required this.icon,
    required this.title,
    required this.badgeCount,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Icon(icon, color: Colors.grey, size: 14),
          const SizedBox(width: 28),
          Text(
            title,
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
          const SizedBox(width: 6),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: AppColors.yellow700,
              shape: BoxShape.circle,
            ),
            constraints: const BoxConstraints(minWidth: 20, minHeight: 20),
            child: Center(
              child: Text(
                badgeCount,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}