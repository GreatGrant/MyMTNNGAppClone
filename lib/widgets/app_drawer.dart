import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../theme/app_colors.dart';
import 'biometric_switch_tile.dart';
import 'drawer_tile.dart';
import 'drawer_tile_with_badge.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool biometricEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            Expanded(
              child: ListView(
                children: const [
                  DrawerTile(icon: Icons.home, title: 'Home'),
                  DrawerTile(icon: Icons.receipt, title: 'Account Summary'),
                  BiometricSwitchTile(),
                  DrawerTile(icon: Icons.call, title: 'Tariff Plans'),
                  DrawerTile(icon: Icons.person, title: 'My Profile'),
                  DrawerTile(icon: Icons.add, title: 'Add New Number'),
                  DrawerTile(icon: Icons.flight, title: 'Roaming'),
                  DrawerTileWithBadge(
                    icon: Icons.notifications,
                    title: 'Notification',
                    badgeCount: '2',
                  ),
                  DrawerTile(icon: Icons.router, title: 'App Tour'),
                  Divider(color: Colors.grey),
                  DrawerTile(
                    icon: Icons.info,
                    title: 'Log out',
                    iconColor: Colors.red,
                    textColor: Colors.red,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    final theme = Theme.of(context);
    final bodyStyle = theme.textTheme.bodyMedium;

    return DrawerHeader(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 24,
            backgroundColor: Color(0xFF3A3A3A),
            child: Text('G', style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    style: bodyStyle?.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                        text: "Y'ello, ",
                        style: bodyStyle?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: "Great Grant",
                        style: bodyStyle?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text('081****9766', style: TextStyle(fontSize: 12, color: Colors.white)),
                const SizedBox(height: 6),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.emoji_events, color: Colors.white, size: 12),
                      SizedBox(width: 4),
                      Text('Explore Prestige', style: TextStyle(color: Colors.white, fontSize: 8)),
                      SizedBox(width: 4),
                      Icon(Icons.arrow_forward_ios, color: Colors.white, size: 8),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }



}

