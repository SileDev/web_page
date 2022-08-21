import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 48, vertical: 8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Color(0xffe8e8e8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          IconButton(onPressed: null, icon: Icon(Icons.account_circle_rounded)),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.calendar_month_rounded),
          ),
          IconButton(onPressed: null, icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}
