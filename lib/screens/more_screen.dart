import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/my_accounts_tab.dart';
import '../widgets/profile_section.dart';
import '../widgets/rewards_tab.dart';
import '../widgets/share_borrow_tab.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const ProfileSection(),
              Container(
                color: const Color(0xFF1B1B1B),
                child: TabBar(
                  labelStyle: Theme.of(context).textTheme.bodySmall, // Uses theme font
                  unselectedLabelStyle: Theme.of(context).textTheme.bodySmall, // Uses theme font
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.white,
                  tabs: const [
                    Tab(text: 'My Account'),
                    Tab(text: 'Share &\nBorrow'),
                    Tab(text: 'Rewards'),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    MyAccountTab(),
                    ShareBorrowTab(),
                    RewardsTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
