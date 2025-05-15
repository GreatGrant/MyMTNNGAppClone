import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_item.dart';

// class ProfileSection extends StatelessWidget {
//   const ProfileSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black,
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 radius: 30,
//                 backgroundColor: Colors.grey,
//                 child: Text('G', style: TextStyle(fontSize: 24, color: Colors.white)),
//               ),
//             ],
//           ),
//           SizedBox(height: 8),
//           Text('Great Grant', style: TextStyle(fontSize: 20, color: Colors.white)),
//           Text('greatgrant116@gmail.com', style: TextStyle(color: Colors.grey)),
//           Text('08169639766', style: TextStyle(color: Colors.grey)),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.check_circle, color: Colors.green, size: 16),
//               Text(' NIN Verified', style: TextStyle(color: Colors.green)),
//             ],
//           ),
//           SizedBox(height: 16),
//           Container(
//             color: Colors.yellow,
//             padding: EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('Enjoy Personalized Offers', style: TextStyle(color: Colors.black)),
//                 SizedBox(width: 8),
//                 Text('Get up to 100% Data Bonus on select data bundles', style: TextStyle(color: Colors.black)),
//                 SizedBox(width: 8),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: Text('View >>'),
//                   style: ElevatedButton.styleFrom(primary: Colors.white, onPrimary: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// My Account Tab Content
class MyAccountTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MenuItem(
            icon: Icons.history,
            title: 'Usage History',
            subtitle: 'Check your device usages',
            onTap: () {},
          ),
          MenuItem(
            icon: Icons.receipt,
            title: 'Transaction History',
            subtitle: 'See your transaction details',
            onTap: () {},
          ),
          MenuItem(
            icon: Icons.fingerprint,
            title: 'Biometric Access',
            subtitle: 'Log in with finger/face recognition',
            onTap: () {},
          ),
          MenuItem(
            icon: Icons.payment,
            title: 'Pay Bill',
            subtitle: 'Manage for post paid bills',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
