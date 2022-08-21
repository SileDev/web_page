import 'package:flutter/material.dart';
import 'package:web_page/ui/pages/home_page/components/content_section/categories_bar/categories_bar.dart';
import 'package:web_page/ui/pages/home_page/components/content_section/categories_search_bar/categories_search_bar.dart';
import 'package:web_page/ui/pages/home_page/components/content_section/services/services.dart';

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
          children: [
            Text(
              "Explore Your Personal Interests",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
                fontWeight: Theme.of(context).textTheme.titleLarge!.fontWeight,
                color: const Color(0xff06d199),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const CategoriesBar(),
            const SizedBox(
              height: 16,
            ),
            const CategoriesSearchBar(),
            const Services(),
          ],
        ),
      ),
    );
  }
}
