import 'package:flutter/material.dart';
class ScrollableTabGrid extends StatefulWidget {
  const ScrollableTabGrid({super.key});

  @override
  _ScrollableTabGridState createState() => _ScrollableTabGridState();
}

class _ScrollableTabGridState extends State<ScrollableTabGrid> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> tabTitles = [
    "Hot", "MTN", "Fun", "Transport",
    "Travel", "Health", "Finance", "Utilities"
  ];

  final Map<String, List<Map<String, dynamic>>> tabContent = {
    "Hot": [
      {
        "label": "MTN FibreX",
        "color": Colors.black,
        "image": "assets/images/fibrex.png"
      },
      {
        "label": "Dominos Pizza",
        "color": Colors.white,
        "image": "assets/images/dominos.png"
      },
      {
        "label": "Wakanow",
        "color": Colors.white,
        "image": "assets/images/wakanow.png"
      },
      {
        "label": "Alend Loans",
        "color": Colors.white,
        "image": "assets/images/alend.png"
      },
      {
        "label": "MoMo PSB",
        "color": Colors.white,
        "image": "assets/images/momo_psb.png"
      },
      {
        "label": "AIDA Credit",
        "color": Colors.white,
        "image": "assets/images/aida_credit.png"
      },
      {
        "label": "Cowrywise Save & Invest",
        "color": Color(0xFF004CEB),
        "image": "assets/images/cowrywise.png"
      },
      {
        "label": "BetKing Join & Get N100",
        "color": Color(0xFF001041),
        "image": "assets/images/betking.png"
      },
      {
        "label": "HealthTracka",
        "color": Colors.white,
        "image": "assets/images/healthtracka.png"
      },
      {
        "label": "Buypower",
        "color": Colors.black,
        "image": "assets/images/buypower.png"
      },
      {
        "label": "Apple Music",
        "color": Colors.red,
        "image": "assets/images/apple_music.png"
      },
      {
        "label": "Y’ello Spin and Win",
        "color": const Color(0xFFFFCB05),
        "image": "assets/images/spin.png"
      },
    ],
    // Other tabs can reuse or have different button sets
    "MTN": [],
    "Fun": [],
    "Transport": [],
    "Travel": [],
    "Health": [],
    "Finance": [],
    "Utilities": [],
  };

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabTitles.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.grey[800],
            padding: EdgeInsets.symmetric(vertical: 1),
            child: TabBar(
              tabAlignment: TabAlignment.start,
              labelPadding: EdgeInsets.zero,
              controller: _tabController,
              isScrollable: true,
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(width: 1, color: Colors.yellow),
              ),
              labelColor: Color(0xFFFFCB06),
              unselectedLabelColor: Colors.white70,
              labelStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              tabs: tabTitles.map((title) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  child: Tab(text: title, height: 40),
                );
              }).toList(),
            ),
          ),
          Container(
            color: Colors.grey[900],
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: SizedBox(
              height: 290,
              child: TabBarView(
                controller: _tabController,
                children: tabTitles.map((tab) {
                  final buttons = tabContent[tab] ?? [];
                  if (buttons.isEmpty) {
                    return Center(
                      child: Text(
                        "No content",
                        style: TextStyle(color: Colors.white70),
                      ),
                    );
                  }
                  return SingleChildScrollView(
                    child: Column(
                      children: List.generate((buttons.length / 4).ceil(), (rowIndex) {
                        final rowItems = buttons.skip(rowIndex * 4).take(4).toList();
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: rowItems.map((item) {
                                return Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: item["color"],
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            item["image"],
                                            width: 40,
                                            height: 40,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        item["label"],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w300,
                                        ),
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                            if (rowIndex < (buttons.length / 4).ceil() - 1)
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 12),
                                child: Divider(thickness: 1, color: Colors.grey[850]),
                              ),
                          ],
                        );
                      }),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }


}