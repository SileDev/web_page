import 'package:flutter/material.dart';
import 'package:web_page/ui/pages/home_page/components/content_section/content_section.dart';
import 'package:web_page/ui/pages/home_page/components/lateral_menu/lateral_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.width);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Row(
          children: [
            if (size.width > 650) const LateralMenu(),
            const ContentSection(),
          ],
        ),
      ),
      drawer: (size.width > 650) ? const LateralMenu() : null,
    );
  }
}
