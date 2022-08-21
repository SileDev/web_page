import 'package:flutter/material.dart';

class CategoriesDropdown extends StatelessWidget {
  final String label;
  const CategoriesDropdown({Key? key, required this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff5f5f5),
      child: DropdownButton(
          itemHeight: 56,
          isExpanded: true,
          iconEnabledColor: const Color(0xff06d199),
          iconDisabledColor: const Color(0xff06d199),
          underline: DropdownButtonHideUnderline(
            child: Container(),
          ),
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
                child: Text(
                  label,
                  style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.labelMedium!.fontSize,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
          onChanged: null),
    );
  }
}
