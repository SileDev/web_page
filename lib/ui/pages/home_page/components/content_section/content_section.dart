import 'package:flutter/material.dart';
import 'package:web_page/ui/pages/home_page/components/content_section/categories_bar/categories_bar.dart';

class ContentSection extends StatelessWidget {
  const ContentSection({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: const [
            Text(
              "Explore Your Personal Interests",
              textAlign: TextAlign.center,
            ),
            CategoriesBar(),
          ],
        ),
      ),
    );
  }
}
