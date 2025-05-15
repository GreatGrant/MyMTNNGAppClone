import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'info_tile.dart';
import 'menu_list.dart';

class ShareBorrowTab extends StatelessWidget {
  const ShareBorrowTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
        InfoTile(
            icon: Icons.handshake,
            title: 'Share Airtime/Data',
            subtitle: 'Show love to family and friends',
            onTap: () {},
          ),
          InfoTile(
            icon: Icons.handshake,
            title: 'Borrow Airtime/Data',
            subtitle: 'Never run out of Airtime or Data',
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
