import 'package:flutter/material.dart';
import 'package:web_page/ui/pages/home_page/components/content_section/categories_search_bar/elements/categories_dropdown.dart';

class CategoriesSearchBar extends StatelessWidget {
  const CategoriesSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0xff33ddae),
      child: Stack(
        children: [
          Positioned(
            right: 16,
            child: Image.asset(
              "assets/content_panel/cpsbb.jpg",
              height: 56,
            ),
          ),
          Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 400),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Material(
                  child: Row(
                    children: [
                      Container(
                        color: const Color(0xffe7e7e7),
                        width: 100,
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
