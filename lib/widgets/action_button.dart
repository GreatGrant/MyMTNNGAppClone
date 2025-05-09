import 'package:flutter/material.dart';

// Reusable button widget
class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const ActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: const Color(0xFFFFCB05), size: 25),
            ),
            const SizedBox(height: 6),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Row of evenly spaced action buttons
class ActionButtonRow extends StatelessWidget {
  const ActionButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ActionButton(
            icon: Icons.electrical_services,
            label: "MTN FibreX",
            onTap: () => print('Tapped FibreX'),
          ),
          ActionButton(
            icon: Icons.public, // Corrected to Icons.public
            label: "Roaming",
            onTap: () => print('Tapped Roaming'),
          ),
          ActionButton(
            icon: Icons.logout,
            label: "Share",
            onTap: () => print('Tapped Share'),
          ),
          ActionButton(
            icon: Icons.phone_android,
            label: "Borrow",
            onTap: () => print('Tapped Borrow'),
          ),
          ActionButton(
            icon: Icons.local_offer,
            label: "Offers",
            onTap: () => print('Tapped Offers'),
          ),
        ],
      ),
    );
  }
}
