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
    final theme = Theme.of(context);
    final bodyStyle = theme.textTheme.bodyMedium;
    final smallText = bodyStyle?.copyWith(fontSize: 12);
    final labelStyle = theme.textTheme.labelLarge;

    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        color: AppColors.darkCard,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Column 1: G badge
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(
                  builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: CircleAvatar(
                        backgroundColor: const Color(0xFF3A3A3A),
                        radius: 20,
                        child: Text(
                          "G",
                          style: labelStyle?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),

            const SizedBox(width: 12),

            // Column 2: Greeting, phone number, explore
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: bodyStyle?.copyWith(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: "Y'ello, ",
                          style: bodyStyle?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: userName,
                          style: bodyStyle?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    phoneNumber,
                  ),
                  const SizedBox(height: 4),
                  GestureDetector(
                    onTap: onExplorePrestigePressed,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.star, color: Colors.white, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          "Explore Prestige",
                          style: smallText?.copyWith(color: Colors.white),
                        ),
                        const SizedBox(width: 4),
                        const Icon(Icons.arrow_forward_ios, size: 10, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Column 3: Actions (search + notification + balance)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end, // Aligns the row's children to the right
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Container that wraps both icons to control their positioning
                    Container(
                      padding: EdgeInsets.zero, // No padding around the icons
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end, // Aligns the icons to the right within the container
                        children: [
                          // Search icon with increased size
                          IconButton(
                            icon: const Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 25, // Set the size to the desired value (e.g., 30)
                            ),
                            padding: EdgeInsets.zero, // No padding around the icon
                            constraints: const BoxConstraints(),
                            onPressed: onSearchPressed,
                          ),
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              // Notification icon with increased size
                              IconButton(
                                icon: const Icon(
                                  Icons.notifications_outlined,
                                  color: Colors.white,
                                  size: 25, // Set the size to the desired value (e.g., 30)
                                ),
                                padding: EdgeInsets.zero, // No padding around the icon
                                constraints: const BoxConstraints(),
                                onPressed: onNotificationsPressed,
                              ),
                              if (notificationCount > 0)
                                Positioned(
                                  right: 4,
                                  top: 4,
                                  child: Container(
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      color: Colors.yellow[700],
                                      shape: BoxShape.circle,
                                    ),
                                    constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
                                    child: Text(
                                      notificationCount.toString(),
                                      style: smallText?.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: onProfilePressed,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFF27262B),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all( // Add this for white outline
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.account_balance_wallet, color: Colors.white, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          "₦********",
                          style: smallText?.copyWith(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(width: 4),
                        const Icon(Icons.visibility, color: Colors.white, size: 16),
                      ],
                    ),
                  ),
                ),
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