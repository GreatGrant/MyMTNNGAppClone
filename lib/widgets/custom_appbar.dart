import 'package:flutter/material.dart';
import 'package:my_mtn_app_clone/theme/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String userName;
  final String phoneNumber;
  final int notificationCount;
  final VoidCallback? onSearchPressed;
  final VoidCallback? onNotificationsPressed;
  final VoidCallback? onProfilePressed;
  final VoidCallback? onExplorePrestigePressed;

  const CustomAppBar({
    super.key,
    required this.userName,
    required this.phoneNumber,
    required this.notificationCount,
    this.onSearchPressed,
    this.onNotificationsPressed,
    this.onProfilePressed,
    this.onExplorePrestigePressed,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        color: AppColors.darkCard,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Column 1: G badge
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[800],
                  radius: 20,
                  child: const Text(
                    "G",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(width: 12),

            // Column 2: Greeting, phone number, explore
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Y'ello, $userName",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    phoneNumber,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 4),
                  GestureDetector(
                    onTap: onExplorePrestigePressed,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.star, color: Colors.white, size: 16),
                        SizedBox(width: 4),
                        Text(
                          "Explore Prestige",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(Icons.arrow_forward_ios, size: 10, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Column 3: Search + notifications, then ₦****
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.search, color: Colors.white),
                      onPressed: onSearchPressed,
                    ),
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.notifications, color: Colors.white),
                          onPressed: onNotificationsPressed,
                        ),
                        if (notificationCount > 0)
                          Positioned(
                            right: 6,
                            top: 6,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.yellow[700],
                                shape: BoxShape.circle,
                              ),
                              constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
                              child: Text(
                                notificationCount.toString(),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: onProfilePressed,
                  child: Container(
                    margin: const EdgeInsets.only(top: 4),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          "₦********",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                        SizedBox(width: 4),
                        Icon(Icons.visibility, color: Colors.white, size: 16),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
