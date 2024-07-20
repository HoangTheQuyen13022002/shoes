import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes/constants/constants.dart';
import 'package:shoes/presentation/sign/widgets/elevated_buttom_item.dart';

class BottonScreen extends StatelessWidget {
  const BottonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 138,
      child: Column(
        children: [
          const ElevatedButtomItem(
            textElevatedButton: 'Sign In',
            colorElevatedButton: AppColors.blue,
            colorTextElevatedButton: AppColors.white,
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButtomItem(
            textElevatedButton: 'Sign in with google',
            colorElevatedButton: AppColors.white,
            colorTextElevatedButton: AppColors.primaryColor,
            iconButton: SizedBox(
              child: SvgPicture.asset('assets/icons/google.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
