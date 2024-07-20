import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes/presentation/cart/home_cart_screen.dart';
import 'package:shoes/presentation/sign/screens/sign_in_screen.dart';

class HomeNavigator extends StatelessWidget {
  const HomeNavigator({
    required this.iconNavigator,
    super.key,
  });

  final String iconNavigator;

  void handleNavigation(BuildContext context) {
    if (iconNavigator == 'assets/icons/back.svg') { // giả sử 'back_icon' là icon dùng để pop
      Navigator.pop(context);
    }
    else if(iconNavigator == 'assets/icons/cart.svg'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeCartScreen()), // Thay thế SomeOtherPage bằng trang bạn muốn điều hướng tới
      );
    }
    else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignInScreen()), // Thay thế SomeOtherPage bằng trang bạn muốn điều hướng tới
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        handleNavigation(context);
      },
      child: Container(
        width: 44,
        height: 44,
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Màu sắc của bóng mờ
              spreadRadius: 1, // Độ lan tỏa của bóng mờ
              blurRadius: 1, // Độ mờ của bóng
              offset: const Offset(0, 3), // Vị trí của bóng mờ
            )
          ]
        ),
        child: Center(
          child: SvgPicture.asset(iconNavigator),
        ),
      ),
    );
  }
}
