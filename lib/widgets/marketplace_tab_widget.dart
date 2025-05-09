// import 'package:flutter/material.dart';
//
// import 'marketplace_button.dart';
//
// class MarketplaceItem {
//   final String imagePath;
//   final String label;
//   final Color backgroundColor;
//
//   const MarketplaceItem(this.imagePath, this.label, this.backgroundColor);
// }
//
// class MarketplaceWidget extends StatefulWidget {
//   final Map<String, List<MarketplaceItem>> tabData;
//
//   const MarketplaceWidget({super.key, required this.tabData});
//
//   @override
//   State<MarketplaceWidget> createState() => _MarketplaceWidgetState();
// }
//
// class _MarketplaceWidgetState extends State<MarketplaceWidget> {
//   late String _activeTab;
//
//   @override
//   void initState() {
//     super.initState();
//     _activeTab = widget.tabData.keys.first;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final items = widget.tabData[_activeTab]!;
//
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           height: 48,
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             children: widget.tabData.keys.map((tab) {
//               final isActive = tab == _activeTab;
//               return GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     _activeTab = tab;
//                   });
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                   child: Column(
//                     children: [
//                       Text(
//                         tab,
//                         style: TextStyle(
//                           color: isActive ? Colors.white : Colors.white70,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       if (isActive)
//                         Container(
//                           margin: const EdgeInsets.only(top: 4),
//                           height: 2,
//                           width: 20,
//                           color: Colors.yellow,
//                         )
//                     ],
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//         const SizedBox(height: 16),
//         GridView.count(
//           crossAxisCount: 4,
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           crossAxisSpacing: 12,
//           mainAxisSpacing: 12,
//           children: items.map((btn) => MarketplaceButton(
//             imagePath: btn.imagePath,
//             label: btn.label,
//             backgroundColor: btn.backgroundColor,
//           )).toList(),
//         ),
//       ],
//     );
//   }
// }
