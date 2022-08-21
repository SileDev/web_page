import 'package:flutter/material.dart';
import 'package:web_page/ui/pages/home_page/components/lateral_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Row(
          children: [
            LateralMenu(),
            Expanded(
                child: Container(
              color: Colors.blue,
            ))
          ],
        ),
      ),
    );
  }
}
