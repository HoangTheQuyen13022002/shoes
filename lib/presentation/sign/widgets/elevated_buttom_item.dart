import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes/constants/constants.dart';

class ElevatedButtomItem extends StatelessWidget {
  const ElevatedButtomItem({
    required this.textElevatedButton,
    required this.colorElevatedButton,
    required this.colorTextElevatedButton,
    this.iconButton,
    super.key,
  });

  final String textElevatedButton;
  final Color colorElevatedButton;
  final Color colorTextElevatedButton;
  final Widget? iconButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: colorElevatedButton),
        onPressed: () {},
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: iconButton),
              if (iconButton != null) const SizedBox(width: 8),
              Text(
                textElevatedButton,
                style: TextStyle(
                  fontSize: 18,
                  color: colorTextElevatedButton,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
