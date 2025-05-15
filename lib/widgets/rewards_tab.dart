import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'info_tile.dart';

class RewardsTab extends StatelessWidget {
  const RewardsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InfoTile(
            icon: Icons.group,
            title: 'My Referrals',
            subtitle: 'Check your referral list/status',
            onTap: () {},
          ),
          InfoTile(
            icon: Icons.star,
            title: 'Prestige Rewards',
            subtitle: 'Check you prestige rewards',
            onTap: () {},
          ),
          InfoTile(
            icon: Icons.local_offer,
            title: 'Offers',
            subtitle: 'Enjoy exclusive App benefits',
            onTap: () {},
          ),
          InfoTile(
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