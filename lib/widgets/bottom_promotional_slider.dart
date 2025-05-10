import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BottomPromoSlider extends StatelessWidget {
  final List<String> imageUrls;

  const BottomPromoSlider({required this.imageUrls, super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imageUrls.length,
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        enlargeCenterPage: false,
        viewportFraction: 0.95,
        height: 200, // You can adjust height here
      ),
      itemBuilder: (context, index, realIndex) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 350),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                imageUrls[index],
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
        );
      },
    );
  }
}
