import 'package:flutter/material.dart';

class MarketplaceButton extends StatelessWidget {
  final String imagePath;
  final String label;
  final Color backgroundColor;

  const MarketplaceButton({
    super.key,
    required this.imagePath,
    required this.label,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
