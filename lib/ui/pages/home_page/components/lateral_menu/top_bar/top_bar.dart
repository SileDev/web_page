import 'package:flutter/material.dart';
import 'package:web_page/ui/pages/home_page/components/lateral_menu/top_bar/elements/top_bar_button.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        color: Color(0xffe8e8e8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 4),
        child: Row(
          children: const [
            TopBarButton(
              isSelected: true,
              iconRoute: "assets/lateral_menu/lmi1.jpg",
              name: "ActionPower",
            ),
            TopBarButton(
              isSelected: false,
              iconRoute: "assets/lateral_menu/lmi2.jpg",
              name: "SeedCoins",
            ),
            TopBarButton(
              isSelected: false,
              iconRoute: "assets/lateral_menu/lmi3.jpg",
              name: "WeSocial",
            ),
            TopBarButton(
              isSelected: false,
              iconRoute: "assets/lateral_menu/lmi4.jpg",
              name: "WeChat",
            ),
          ],
        ),
      ),
    );
  }
}
