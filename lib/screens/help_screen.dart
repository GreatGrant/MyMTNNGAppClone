import 'package:flutter/material.dart';
import 'package:my_mtn_app_clone/theme/app_colors.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            // Header section
            // Header section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
              color: AppColors.yellowBg,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  const CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.chat_bubble, color: Colors.blue, size: 18),
                  ),
                  const SizedBox(height: 8),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hey, ',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'Great Grant',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    'How may we help you?',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            // List of options
            Expanded(
              child: ListView(
                children: [
                  _buildListTile(
                    icon: Icons.phone_outlined,
                    title: 'Contact us',
                    subtitle: 'Get in touch with us',
                  ),
                  Divider(color: Colors.grey[800]),
                  _buildListTile(
                    icon: Icons.thumb_up_outlined,
                    title: 'Feedback',
                    subtitle: 'Share your feedback and help us serve you better',
                  ),
                  Divider(color: Colors.grey[800]),
                  _buildListTile(
                    icon: Icons.question_answer_outlined,
                    title: 'Frequently Asked Questions',
                    subtitle: 'Get a quick answers to all your questions.',
                  ),
                  Divider(color: Colors.grey[800]),
                  _buildListTile(
                    icon: Icons.card_giftcard_outlined,
                    title: 'MTN Foundation',
                    subtitle: 'View projects and activities',
                  ),
                  Divider(color: Colors.grey[800]),
                  _buildListTile(
                    icon: Icons.description,
                    title: 'Track Complaint',
                    subtitle: 'Know the status of your complaints',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[900],
        child: Icon(icon, color: AppColors.yellow700),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontSize: 12, color: Colors.grey),
      ),
      trailing: const Icon(Icons.arrow_forward_ios_rounded,
          color: Colors.grey, size: 14),
      onTap: () {
        // Add navigation or functionality here
      },
    );
  }
}
