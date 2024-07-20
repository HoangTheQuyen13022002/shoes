import 'package:flutter/material.dart';
import 'package:shoes/presentation/widgets/home_navigator.dart';

class AppbarScreen extends StatelessWidget implements PreferredSizeWidget {
  const AppbarScreen({
    required this.contextAppbar,
    super.key,
    this.iconStart,
    this.iconEnd,
  });

  final Widget contextAppbar;
  final String? iconStart;
  final String? iconEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeNavigator(
            iconNavigator: iconStart.toString(),
          ),
          contextAppbar,
          HomeNavigator(
            iconNavigator: iconEnd.toString(),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
