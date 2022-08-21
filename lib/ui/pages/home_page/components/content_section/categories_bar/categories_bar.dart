import 'package:flutter/material.dart';
import 'package:web_page/ui/pages/home_page/components/content_section/categories_bar/elements/category_dropdown.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CategoriesBar extends StatelessWidget {
  const CategoriesBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return StaggeredGrid.count(
      crossAxisCount: (size.width - 354 > 960)
          ? 6
          : (size.width - 354 > 650)
              ? 4
              : (size.width - 354 > 500)
                  ? 3
                  : (size.width - 354 > 350)
                      ? 2
                      : 1,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: const [
        CategoryDropdown(
          label: "Growth",
          imagePath: "assets/content_panel/cpi1.jpg",
        ),
        CategoryDropdown(
          label: "Instant",
          imagePath: "assets/content_panel/cpi2.jpg",
        ),
        CategoryDropdown(
          label: "Lifestyle",
          imagePath: "assets/content_panel/cpi3.jpg",
        ),
        CategoryDropdown(
          label: "inspirational",
          imagePath: "assets/content_panel/cpi4.jpg",
        ),
        CategoryDropdown(
          label: "Experience",
          imagePath: "assets/content_panel/cpi5.jpg",
        ),
        CategoryDropdown(
          label: "Together",
          imagePath: "assets/content_panel/cpi6.jpg",
        ),
      ],
    );
  }
}
