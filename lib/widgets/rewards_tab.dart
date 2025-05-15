import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'info_tile.dart';
import 'menu_list.dart';

class RewardsTab extends StatelessWidget {
  const RewardsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InfoTile(
            icon: Icons.group_outlined,
            title: 'My Referrals',
            subtitle: 'Check your referral list/status',
            onTap: () {},
          ),
          InfoTile(
            icon: Icons.star_border_outlined,
            title: 'Prestige Rewards',
            subtitle: 'Check you prestige rewards',
            onTap: () {},
          ),
          InfoTile(
            icon: Icons.local_offer_outlined,
            title: 'Offers',
            subtitle: 'Enjoy exclusive App benefits',
            onTap: () {},
          ),
          InfoTile(
            icon: Icons.person_add_outlined,
            title: 'Refer & Earn',
            subtitle: 'Invite a friend and get FREE data',
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
}