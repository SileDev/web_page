import 'package:flutter/material.dart';
import 'package:web_page/ui/pages/home_page/components/lateral_menu/bottom_bar/bottom_bar.dart';
import 'package:web_page/ui/pages/home_page/components/lateral_menu/profile_resume/profile_resume.dart';
import 'package:web_page/ui/pages/home_page/components/lateral_menu/top_bar/top_bar.dart';

class LateralMenu extends StatelessWidget {
  const LateralMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: 290,
        constraints: BoxConstraints(
          minHeight: size.height - (56 + 32),
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(color: Color(0xffb8b8b8), blurRadius: 4),
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            TopBar(),
            //ProfileResume(),
            BottomBar()
          ],
        ),
      ),
    );
  }
}
