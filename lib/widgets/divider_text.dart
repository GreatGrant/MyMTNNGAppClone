import 'package:flutter/material.dart';

class DividerText extends StatelessWidget {
  final String text;

  const DividerText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Divider(thickness: 1, color: Colors.grey[800]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Divider(thickness: 1, color: Colors.grey[800]),
            ),
          ),
        ],
      ),
    );
  }
}
