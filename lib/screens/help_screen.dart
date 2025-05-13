import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1A1A1A), // Dark grayish-black
              Color(0xFFFFD700), // Warm yellow
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const GreetingHeader(),
                const SizedBox(height: 20),
                Expanded(child: OptionsList()),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: const Icon(Icons.chat_bubble, color: Colors.yellow),
      ),
    );
  }
}

// Reusable Greeting Header Widget
class GreetingHeader extends StatelessWidget {
  const GreetingHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.chat_bubble_outline,
              color: Colors.blue,
              size: 24,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                'Hey Great Grant,\nHow may we help You?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.2,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Reusable Options List Widget
class OptionsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        OptionTile(
          icon: Icons.phone,
          title: 'Contact us',
          subtitle: 'Get in touch with us',
        ),
        Divider(color: Colors.white30),
        OptionTile(
          icon: Icons.thumb_up,
          title: 'Feedback',
          subtitle: 'Share your feedback and help us serve you better',
        ),
        Divider(color: Colors.white30),
        OptionTile(
          icon: Icons.help_outline,
          title: 'Frequently Asked Questions',
          subtitle: 'Get a quick answers to all your questions.',
        ),
        Divider(color: Colors.white30),
        OptionTile(
          icon: Icons.favorite_border,
          title: 'MTN Foundation',
          subtitle: 'View projects and activities',
        ),
        Divider(color: Colors.white30),
        OptionTile(
          icon: Icons.description,
          title: 'Track Complaint',
          subtitle: 'Know the status of your complaints',
        ),
      ],
    );
  }
}

// Reusable Option Tile Widget
class OptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const OptionTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[800],
        child: Icon(icon, color: Colors.yellow),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontSize: 12, color: Colors.white70),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white70),
    );
  }
}
