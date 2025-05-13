import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../theme/app_colors.dart';

class BiometricSwitchTile extends StatefulWidget {
  const BiometricSwitchTile({super.key});

  @override
  State<BiometricSwitchTile> createState() => _BiometricSwitchTileState();
}

class _BiometricSwitchTileState extends State<BiometricSwitchTile> {
  bool enabled = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          const Icon(Icons.fingerprint, color: Colors.grey),
          const SizedBox(width: 16),
          const Expanded(
            child: Text(
              'Biometric Access',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
          FlutterSwitch(
            width: 40.0,
            height: 20.0,
            toggleSize: 16.0,
            value: enabled,
            activeColor: AppColors.yellow700,
            inactiveColor: Colors.grey,
            padding: 2.0,
            onToggle: (val) => setState(() => enabled = val),
          ),
        ],
      ),
    );
  }
}

