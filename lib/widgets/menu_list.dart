import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  final List<String> menuItems;
  final Function(String)? onItemTapped;

  const MenuList({super.key, required this.menuItems, this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1B1B1B),
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text(
                    menuItems[index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                  onTap: () {
                    if (onItemTapped != null) {
                      onItemTapped!(menuItems[index]);
                    }
                  },
                ),
                if (index != menuItems.length - 1)
                  const Divider(
                    color: Color(0xFF3A3A3A),
                    height: 1,
                    thickness: 1,
                    indent: 16,
                    endIndent: 16,
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
