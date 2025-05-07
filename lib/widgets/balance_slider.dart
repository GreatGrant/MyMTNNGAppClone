import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BalanceSlider extends StatefulWidget {
  const BalanceSlider({super.key});

  @override
  State<BalanceSlider> createState() => _BalanceSliderState();
}

class _BalanceSliderState extends State<BalanceSlider> {
  int _currentIndex = 0;

  final List<Widget> items = const [
    BalanceSliderItem(phoneNumber: '0801 234 5678'),
    BalanceSliderItemTwo(), // Now part of the carousel
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: items.length,
          options: CarouselOptions(
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 4),
            enlargeCenterPage: false, // Don't zoom current card
            viewportFraction: 0.98, // Show 80% of screen, rest reveals next item
            onPageChanged: (index, reason) {
              setState(() => _currentIndex = index);
            },
          ),
          itemBuilder: (context, index, realIndex) => items[index],
        ),

        const SizedBox(height: 8),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            items.length,
                (index) => Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? const Color(0xFFFFCB05)
                    : const Color(0xFF3A3A3A),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BalanceSliderItem extends StatelessWidget {
  final String phoneNumber;
  const BalanceSliderItem({required this.phoneNumber, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 350, // Prevent overly wide layout
        ),
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
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(phoneNumber, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white)),
                  Row(
                    children: const [
                      Text('MTN XtraValue', style: TextStyle(fontSize: 12)),
                      SizedBox(width: 4),
                      Icon(Icons.arrow_forward_ios, size: 12),
                    ],
                  ),
                ],
              ),
            ),

            Divider(height: 4, color: Colors.grey[700]),

            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Row(
                children: [
                  Expanded(
                    child: BalanceColumn(
                      icon: Icons.phone_outlined,
                      label: 'Airtime Balance',
                      value: '₦2.91',
                      bonus: '₦0',
                      buttonLabel: 'Buy Airtime',
                      onPressed: () => print('Buy Airtime'),
                      buttonIcon: Icons.refresh,
                    ),
                  ),
                  Container(width: 1, height: 110, color: Colors.grey[700]),
                  const SizedBox(width: 8),
                  Expanded(
                    child: BalanceColumn(
                      icon: Icons.import_export,
                      label: 'Data Balance',
                      value: '20GB',
                      bonus: '19.24GB',
                      buttonLabel: 'Buy Data',
                      onPressed: () => print('Buy Data'),
                      buttonIcon: Icons.import_export,
                    ),
                  ),
                ],
              ),
            ),

            // Removed the SizedBox(height: 12) here to eliminate space before "View details"
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
              child: Text(
                'View details',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class BalanceSliderItemTwo extends StatelessWidget {
  const BalanceSliderItemTwo({super.key});

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

          ),
          Divider(height: 4, color: Colors.grey[700]),
          // Middle Section with manual padding
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Row(
              children: [
                Expanded(
                  child: ClickableColumn(
                    icon: Icons.add,
                    text: 'Add Number',
                    onTap: () {
                      print('Clicked on More Info');
                      // Add your desired functionality here.
                    },
                  ),
                ),
                Container(width: 1, height: 110, color: Colors.grey[700]),
                const SizedBox(width: 8,),
                Expanded(
                  child: ClickableColumn(
                    icon: Icons.layers,
                    text: 'Manage Numbers',
                    onTap: () {
                      print('Clicked on More Info');
                      // Add your desired functionality here.
                    },
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
  final IconData buttonIcon; // <-- new

  const BalanceColumn({
    required this.icon,
    required this.label,
    required this.value,
    required this.bonus,
    required this.buttonLabel,
    required this.onPressed,
    required this.buttonIcon, // <-- new
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 16, color: Colors.white),
              const SizedBox(width: 4),
              Text(label, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 4),
          Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black87),
              children: [
                const TextSpan(text: 'Bonus: ', style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w300)),
                TextSpan(text: bonus, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white)),
              ],
            ),
          ),
          const SizedBox(height: 4),
          ElevatedButton.icon(
            onPressed: onPressed,
            icon: Icon(buttonIcon, size: 14, color: Colors.white), // <-- updated
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(buttonLabel,
                  style: const TextStyle(color: Color(0xFFFFCB05), fontSize: 12),
                ),
                const SizedBox(width: 4),
                const Icon(Icons.arrow_forward_ios, size: 10, color: Colors.white),
              ],
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: const Color(0xFFFFCB05),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              minimumSize: const Size(120, 30),
              elevation: 0,
            ),
          )
        ],
      ),
    );
  }
}

class ClickableColumn extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const ClickableColumn({
    required this.icon,
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Entire column is clickable
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 24, // Icon size
            color: const Color(0xFFFFCB05), // Icon color
          ),
          const SizedBox(height: 4), // Space between icon and text
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue, // Text color
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

