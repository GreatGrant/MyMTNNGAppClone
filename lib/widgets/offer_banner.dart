import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_mtn_app_clone/theme/app_colors.dart';

class OfferBanner extends StatelessWidget {
  final String mainText;
  final String subText;
  final VoidCallback onViewPressed;

  const OfferBanner({super.key,
    required this.mainText,
    required this.subText,
    required this.onViewPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.yellowBg,
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  mainText,
                  style: const TextStyle(
                    fontSize: 14, // Smaller text
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subText,
                  style: const TextStyle(fontSize: 11, color: Colors.black),
                  softWrap: true,
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: onViewPressed, // Smaller button text
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4), // Tighter button
              minimumSize: const Size(0, 0), // Removes default minimum size
              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Shrinks touch area
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50), // More elliptical
              ),
            ),
            child: const Text('View »', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
          ),
        ],
      ),
    );
  }
}
