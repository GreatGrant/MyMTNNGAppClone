import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../theme/app_colors.dart';

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
                children: [
                  _buildTile(Icons.home, 'Home', color: AppColors.yellow700, selected: true),
                  _buildTile(Icons.receipt, 'Account Summary'),
                  _buildSwitchTile(),
                  _buildTile(Icons.call, 'Tariff Plans'),
                  _buildTile(Icons.person, 'My Profile'),
                  _buildTile(Icons.add, 'Add New Number'),
                  _buildTile(Icons.flight, 'Roaming'),
                  _buildTileWithBadge(Icons.notifications, 'Notification', '2'),
                  _buildTile(Icons.info, 'App Tour'),
                  const Divider(color: Colors.grey),
                  _buildTile(Icons.power_settings_new, 'Log out', color: Colors.red, textColor: Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return DrawerHeader(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 28,
            backgroundColor: Colors.grey,
            child: Text('G', style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Yello, Great Grant',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                const Text('081****9766', style: TextStyle(color: Colors.white)),
                const SizedBox(height: 6),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.emoji_events, color: Colors.white, size: 16),
                      SizedBox(width: 4),
                      Text('Explore Prestige', style: TextStyle(color: Colors.white, fontSize: 12)),
                      SizedBox(width: 4),
                      Icon(Icons.arrow_forward_ios, color: Colors.white, size: 12),
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

  Widget _buildTile(IconData icon, String title,
      {Color color = Colors.grey, bool selected = false, Color? textColor}) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          color: textColor ?? Colors.white,
          fontWeight: selected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      selected: selected,
      onTap: () {},
    );
  }

  Widget _buildTileWithBadge(IconData icon, String title, String badgeCount) {
    return ListTile(
      title: Row(
        children: [
          const Icon(Icons.lock, color: Colors.grey, size: 14),
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
      onTap: () {},
    );
  }

  Widget _buildSwitchTile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          const Icon(Icons.fingerprint, color: Colors.grey),
          const SizedBox(width: 16),
          const Expanded(
            child: Text(
              'Biometric Access',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
          FlutterSwitch(
            width: 40.0,
            height: 20.0,
            toggleSize: 16.0,
            value: biometricEnabled,
            activeColor: AppColors.yellow700,
            inactiveColor: Colors.grey,
            padding: 2.0,
            onToggle: (val) {
              setState(() {
                biometricEnabled = val;
              });
            },
          ),
        ],
      ),
    );
  }


}
