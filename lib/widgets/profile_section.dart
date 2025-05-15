import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_mtn_app_clone/widgets/offer_banner.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xFF3A3A3A),
                child: Text('G', style: TextStyle(fontSize: 14, color: Colors.white)),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text('Great Grant', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: '',),),
          const SizedBox(height: 4),
          const Text('greatgrant@gmail.com'),
          const SizedBox(height: 2,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('08123456778', style: TextStyle(fontSize: 13, color: Colors.white)),
              SizedBox(width: 8),
              Icon(Icons.check_circle, color: Colors.green, size: 13),
              Text(' NIN Verified', style: TextStyle(fontSize: 13, color: Colors.white, fontStyle: FontStyle.italic,
              )),
            ],
          ),
          const SizedBox(height: 16),

          // Carousel of offer banners
          CarouselSlider(
            options: CarouselOptions(
              height: 65,
              enlargeCenterPage: false,
              viewportFraction: 0.9,
              autoPlay: false,
            ),
            items: [
              OfferBanner(
                mainText: "Enjoy Personalized Offers",
                subText: "Get up to 100% Data Bonus on select data bundles",
                onViewPressed: () => print("Offer 1 tapped"),
              ),
              OfferBanner(
                mainText: "Flexa with Apple Music",
                subText: "Stream over 100 Million songs, ads free",
                onViewPressed: () => print("Offer 2 tapped"),
              ),
            ].map((banner) {
              return Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: banner,
                  );
                },
              );
            }).toList(),
          ),

        ],
      ),
    );
  }
}
