import 'package:flutter/material.dart';
import 'package:my_mtn_app_clone/widgets/offer_banner.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: Text('G', style: TextStyle(fontSize: 24, color: Colors.white)),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text('Great Grant', style: TextStyle(fontSize: 20, color: Colors.white)),
          const Text('greatgrant@gmail.com', style: TextStyle(color: Colors.grey)),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('08169639766', style: TextStyle(color: Colors.grey)),
              SizedBox(width: 8),
              Icon(Icons.check_circle, color: Colors.green, size: 16),
              Text(' NIN Verified', style: TextStyle(color: Colors.grey)),
            ],
          ),
          const SizedBox(height: 16),

          // Horizontal banner carousel
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 0),
              itemCount: 3, // You can change this to match the number of banners
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (_, index) {
                return SizedBox(
                  width: 300,
                  child: OfferBanner(
                    mainText: "Offer ${index + 1}",
                    subText: "Get up to 100% Data Bonus on select data bundles",
                    onViewPressed: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
