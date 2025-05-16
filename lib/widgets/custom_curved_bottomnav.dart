// Reusable Curved Bottom Navigation Bar Widget
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurvedBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;
  final List<BottomNavigationBarItem> items;
  final VoidCallback? onChatPressed;

  const CurvedBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
    required this.items,
    this.onChatPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedNavigationClipper(selectedIndex: selectedIndex, itemCount: items.length),
      child: Container(
        color: Colors.grey[900],
        child: Stack(
          alignment: Alignment.center,
          children: [
            BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: onTap,
              type: BottomNavigationBarType.fixed,
              items: items,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            // Chat button on the right
            Positioned(
              right: 16,
              bottom: 16,
              child: FloatingActionButton(
                onPressed: onChatPressed,
                backgroundColor: Colors.white,
                mini: true,
                child: Icon(
                  Icons.chat,
                  color: Colors.yellow[700],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Clipper for the curved shape
class CurvedNavigationClipper extends CustomClipper<Path> {
  final int selectedIndex;
  final int itemCount;

  CurvedNavigationClipper({required this.selectedIndex, required this.itemCount});

  @override
  Path getClip(Size size) {
    Path path = Path();
    double curveHeight = 40.0; // Height of the curve
    double itemWidth = size.width / itemCount;

    path.lineTo(0, 0);
    path.lineTo(0, size.height - curveHeight);

    // Calculate the center of the selected item
    double centerX = itemWidth * (selectedIndex + 0.5);
    path.quadraticBezierTo(
      centerX - 50, // Control point x
      size.height, // Control point y (extends upward)
      centerX, // End point x
      size.height - curveHeight, // End point y
    );
    path.quadraticBezierTo(
      centerX + 50, // Control point x
      size.height, // Control point y
      size.width, // End point x
      size.height - curveHeight, // End point y
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 2; // Marketplace is selected by default (index 2)

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black, // Ensure body respects the curve
        child: Center(
          child: Text(
            "Curved Bottom Navigation Bar Example",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
      bottomNavigationBar: CurvedBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: "Play",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: "Marketplace",
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.yellow[700],
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.store, color: Colors.black),
            ),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: "Help",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: "More",
          ),
        ],
        onChatPressed: () {
          print("Chat button pressed");
        },
      ),
    );
  }
}

