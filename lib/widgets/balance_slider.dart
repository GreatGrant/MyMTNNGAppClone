import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class SliderItem extends StatelessWidget {
  final String phoneNumber;
  const SliderItem({required this.phoneNumber, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF414141),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // Top Row with manual padding
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(phoneNumber, style: const TextStyle(fontSize: 12)),
                Row(
                  children: const [
                    Text('Account', style: TextStyle(fontSize: 12)),
                    SizedBox(width: 4),
                    Icon(Icons.arrow_forward_ios, size: 12),
                  ],
                ),
              ],
            ),
          ),

          const Divider(height: 20),

          // Middle Section with manual padding
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Expanded(
                  child: BalanceColumn(
                    icon: Icons.phone,
                    label: 'Airtime Balance',
                    value: '₦2.91',
                    bonus: '₦0',
                    buttonLabel: 'Buy Airtime',
                    onPressed: () => print('Buy Airtime'),
                  ),
                ),
                Container(width: 1, height: 110, color: Colors.grey[300]),
                Expanded(
                  child: BalanceColumn(
                    icon: Icons.wifi,
                    label: 'Data Balance',
                    value: '20GB',
                    bonus: '19.24GB',
                    buttonLabel: 'Buy Data',
                    onPressed: () => print('Buy Data'),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          // View Details (no side padding so it spans full width)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF8D8D8D),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Center(
              child: Text(
                'View details',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BalanceColumn extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final String bonus;
  final String buttonLabel;
  final VoidCallback onPressed;

  const BalanceColumn({
    required this.icon,
    required this.label,
    required this.value,
    required this.bonus,
    required this.buttonLabel,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 16, color: Colors.red),
              const SizedBox(width: 4),
              Text(label, style: const TextStyle(fontSize: 12)),
            ],
          ),
          const SizedBox(height: 4),
          Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black87),
              children: [
                const TextSpan(text: 'Bonus: '),
                TextSpan(text: bonus, style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton.icon(
            onPressed: onPressed,
            icon: const Icon(Icons.shopping_cart, size: 14, color: Colors.black),
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(buttonLabel,
                  style: const TextStyle(color: Colors.black, fontSize: 11),
                ),
                const SizedBox(width: 4),
                const Icon(Icons.arrow_forward_ios, size: 10, color: Colors.black),
              ],
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFFCB05),
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              minimumSize: const Size(0, 30),
              elevation: 0,
            ),
          )
        ],
      ),
    );
  }
}
