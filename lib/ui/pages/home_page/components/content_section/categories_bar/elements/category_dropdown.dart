import 'package:flutter/material.dart';

class CategoryDropdown extends StatelessWidget {
  final String label, imagePath;
  const CategoryDropdown(
      {Key? key, required this.label, required this.imagePath})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        itemHeight: 56,
        isExpanded: true,
        dropdownColor: const Color(0xfff5f5f5),
        iconDisabledColor: const Color(0xff06d199),
        icon: SizedBox(
          width: 16,
          height: 56,
          child: Stack(
            children: const [
              Positioned(
                bottom: 16,
                left: 0,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 8,
                ),
              ),
            ],
          ),
        ),
        items: [
          DropdownMenuItem(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    label,
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.labelMedium!.fontSize,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
        onChanged: null);
  }
}
