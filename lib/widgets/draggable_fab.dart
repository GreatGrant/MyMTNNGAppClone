import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class DraggableFloatingActionButton extends StatefulWidget {
  const DraggableFloatingActionButton({super.key});

  @override
  State<DraggableFloatingActionButton> createState() =>
      _DraggableFloatingActionButtonState();
}

class _DraggableFloatingActionButtonState extends State<DraggableFloatingActionButton> {
  late Offset offset;

  @override
  void initState() {
    super.initState();
    // Start at bottom right (will adjust dynamically based on screen size later)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final size = MediaQuery.of(context).size;
      setState(() {
        offset = Offset(size.width - 80, size.height - 180); // near bottom right
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final maxTop = screenSize.height - 160; // avoid bottom nav
    final maxLeft = screenSize.width - 56;  // FAB width

    return Positioned(
      left: offset.dx.clamp(0, maxLeft),
      top: offset.dy.clamp(0, maxTop),
      child: Draggable(
        feedback: _buildButton(),
        childWhenDragging: Container(),
        onDragEnd: (details) {
          final newOffset = details.offset;
          setState(() {
            offset = Offset(
              newOffset.dx.clamp(0, maxLeft),
              newOffset.dy.clamp(0, maxTop),
            );
          });
        },
        child: _buildButton(),
      ),
    );
  }

  Widget _buildButton() {
    return FloatingActionButton(
      backgroundColor: AppColors.yellow700,
      onPressed: () {
        print("Chat bubble tapped");
      },
      child: const Icon(Icons.face, color: Colors.black),
    );
  }
}
