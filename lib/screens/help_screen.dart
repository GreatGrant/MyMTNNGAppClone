import 'package:flutter/material.dart';
import 'package:my_mtn_app_clone/theme/app_colors.dart';
import 'package:my_mtn_app_clone/widgets/info_tile.dart';

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
                  const InfoTile(
                    icon: Icons.phone_outlined,
                    title: 'Contact us',
                    subtitle: 'Get in touch with us',
                  ),
                  Divider(color: Colors.grey[800]),
                  const InfoTile(
                    icon: Icons.thumb_up_outlined,
                    title: 'Feedback',
                    subtitle: 'Share your feedback and help us serve you better',
                  ),
                  Divider(color: Colors.grey[800]),
                  const InfoTile(
                    icon: Icons.question_answer_outlined,
                    title: 'Frequently Asked Questions',
                    subtitle: 'Get a quick answers to all your questions.',
                  ),
                  Divider(color: Colors.grey[800]),
                  const InfoTile(
                    icon: Icons.card_giftcard_outlined,
                    title: 'MTN Foundation',
                    subtitle: 'View projects and activities',
                  ),
                  Divider(color: Colors.grey[800]),
                  const InfoTile(
                    icon: Icons.description_outlined,
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

}
