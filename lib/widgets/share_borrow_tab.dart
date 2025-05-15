import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'info_tile.dart';

class ShareBorrowTab extends StatelessWidget {
  const ShareBorrowTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
        InfoTile(
            icon: Icons.share,
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
          InfoTile(
            icon: Icons.device_hub,
            title: 'Device Data Usage',
            subtitle: '',
            onTap: () {},
          ),
          InfoTile(
            icon: Icons.signal_cellular_alt,
            title: '5G Coverage Locator',
            subtitle: '',
            onTap: () {},
          ),
          InfoTile(
            icon: Icons.speed,
            title: 'Speed Test',
            subtitle: '',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
