import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PromoItem {
  final String title;
  final String message;
  final String buttonText;
  final VoidCallback? onButtonPressed;
  final IconData icon;

  PromoItem({
    required this.title,
    required this.message,
    required this.buttonText,
    this.onButtonPressed,
    this.icon = Icons.local_fire_department,
  });
}

class PromoSlider extends StatefulWidget {
  final List<PromoItem> items;
  final double height;

  const PromoSlider({
    super.key,
    required this.items,
    this.height = 90.0, // Flatter banner
  });

  @override
  State<PromoSlider> createState() => _PromoSliderState();
}

class _PromoSliderState extends State<PromoSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: widget.height,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 4),
            enlargeCenterPage: false,
            viewportFraction: 0.85,
            onPageChanged: (index, reason) {
              setState(() => _currentIndex = index);
            },
          ),
          itemCount: widget.items.length,
          itemBuilder: (context, index, realIndex) {
            final item = widget.items[index];

            return Container(
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // 1. Icon column (fixed width)
                  Container(
                    width: 36,
                    alignment: Alignment.center,
                    child: Icon(item.icon, size: 28, color: Colors.red),
                  ),

                  const SizedBox(width: 8),

                  // 2. Texts column (expanded to take more space)
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Colors.black87,
                            fontWeight: FontWeight.w300,
                            fontSize: 11,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          item.message,
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // 3. Button column
                  Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: item.onButtonPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFCB05),
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: const Size(0, 30),
                        textStyle: const TextStyle(fontSize: 11),
                      ),
                      child: Text(
                        item.buttonText,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),

        const SizedBox(height: 8),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.items.asMap().entries.map((entry) {
            return Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == entry.key
                    ? const Color(0xFFFFCB05)
                    : const Color(0xFF3A3A3A),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
