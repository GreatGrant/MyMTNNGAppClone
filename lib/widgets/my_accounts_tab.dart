import 'package:flutter/material.dart';
import 'package:my_mtn_app_clone/widgets/info_tile.dart';

import 'menu_list.dart'; // Update path as needed

class MyAccountTab extends StatelessWidget {
  const MyAccountTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InfoTile(
            icon: Icons.history_outlined,
            title: 'Usage History',
            subtitle: 'Check your device usages',
            onTap: () {},
          ),
          _buildDivider(),
          InfoTile(
            icon: Icons.bar_chart_outlined,
            title: 'Transaction History',
            subtitle: 'See your transaction details',
            onTap: () {},
          ),
          _buildDivider(),
          InfoTile(
            icon: Icons.fingerprint_outlined,
            title: 'Biometric Access',
            subtitle: 'Log in with finger/face recognition',
            onTap: () {},
          ),
          _buildDivider(),
          InfoTile(
            icon: Icons.payment,
            title: 'Pay Bill',
            subtitle: 'Manage for post paid bills',
            onTap: () {},
          ),
          _buildDivider(),
          InfoTile(
            icon: Icons.layers,
            title: 'Manage Numbers',
            subtitle: 'Add or remove your \'Added\' MTN numbers',
            onTap: () {},
          ),
          _buildDivider(),
          InfoTile(
            icon: Icons.pivot_table_chart_outlined,
            title: 'Manage Subscription',
            subtitle: 'Check auto renew status',
            onTap: () {},
          ),
          _buildDivider(),
          InfoTile(
            icon: Icons.bar_chart_outlined,
            title: 'Payment History',
            subtitle: 'View the status of your payment',
            onTap: () {},
          ),
      Center(
        child: MenuList(
          menuItems: const [
            'Device Data Usage',
            '5G Coverage Locator',
            'Speed Test',
            'App Tour',
            'Privacy Policy',
            'Terms And Conditions',
            'Log Out',
          ],
          onItemTapped: (item) {
            print('Tapped on: $item');
            // Add your navigation or action logic here
          },
        )),
          const SizedBox(height: 12,)
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Divider(color: Color(0xFF3A3A3A), thickness: 0.6),
    );
  }
}
