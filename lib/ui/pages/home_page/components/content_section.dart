import 'package:flutter/material.dart';

class ContentSection extends StatelessWidget {
  const ContentSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Text(
              "Explore Your Personal Interests",
              textAlign: TextAlign.center,
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisSpacing: 8,
              crossAxisCount: 6,
              childAspectRatio: 20 / 9,
              children: [
                DropdownButton(
                    icon: Image.asset("assets/content_panel/cpi1.jpg"),
                    items: [
                      const DropdownMenuItem(child: Text("Growth")),
                      /* DropdownMenuItem(
                    child: Image.asset("assets/content_panel/cpi1.jpg"),
                  )*/
                    ],
                    onChanged: null),DropdownButton(
                    icon: Image.asset("assets/content_panel/cpi1.jpg"),
                    items: [
                      const DropdownMenuItem(child: Text("Growth")),
                      /* DropdownMenuItem(
                    child: Image.asset("assets/content_panel/cpi1.jpg"),
                  )*/
                    ],
                    onChanged: null)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
