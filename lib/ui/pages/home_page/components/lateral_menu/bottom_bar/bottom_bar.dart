import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 8),
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Color(0xffe8e8e8),
        ),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              IconButton(
                  onPressed: null, icon: Icon(Icons.account_circle_rounded)),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.calendar_month_rounded),
              ),
              IconButton(onPressed: null, icon: Icon(Icons.settings)),
            ],
          ),
        ),
      ),
    );
  }
}
