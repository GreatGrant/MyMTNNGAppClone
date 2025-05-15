import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_item.dart';

class RewardsTab extends StatelessWidget {
  const RewardsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MenuItem(
            icon: Icons.group,
            title: 'My Referrals',
            subtitle: 'Check your referral list/status',
            onTap: () {},
          ),
          MenuItem(
            icon: Icons.star,
            title: 'Prestige Rewards',
            subtitle: 'Check you prestige rewards',
            onTap: () {},
          ),
          MenuItem(
            icon: Icons.local_offer,
            title: 'Offers',
            subtitle: 'Enjoy exclusive App benefits',
            onTap: () {},
          ),
          MenuItem(
            icon: Icons.person_add,
            title: 'Refer & Earn',
            subtitle: 'Invite a friend and get FREE data',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}