import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes/main.dart';
import 'package:shoes/presentation/cart/home_cart_screen.dart';
import 'package:shoes/presentation/favorite/favorite_screen.dart';
import 'package:shoes/presentation/home/screens/home_screen.dart';
import 'package:shoes/presentation/notification/notification_screen.dart';
import 'package:shoes/presentation/profile/profile_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  int currenIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currenIndex = index;
    });

    switch(index){
      case 0 :
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyApp()));
      case 1 :
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const FavoriteScreen()));
      case 2 :
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeCartScreen()));
      case 3 :
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationScreen()));
      case 4 :
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xFF707B81).withOpacity(0.2),
      padding: const EdgeInsets.all(0),
      height: 106,
      child: Container(
        padding: const EdgeInsets.all(0),
        margin: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'), // Thay thế bằng đường dẫn hình ảnh của bạn
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: IconButton(
                    icon: SvgPicture.asset(color: currenIndex == 0 ? Colors.blue : Colors.black,'assets/icons/home.svg',),
                    onPressed: () => onTabTapped(0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: IconButton(
                    icon: SvgPicture.asset('assets/icons/heart.svg',color: currenIndex == 1 ? Colors.blue : Colors.black,),
                    onPressed: () => onTabTapped(1),
                  ),
                ),
                const SizedBox(width: 50,),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: IconButton(
                    icon: SvgPicture.asset('assets/icons/notification.svg',color: Colors.black,),
                    onPressed: () => onTabTapped(3),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: IconButton(
                    icon: SvgPicture.asset('assets/icons/user.svg',color: Colors.black,),
                    onPressed: () => onTabTapped(4),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 50),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue, // Màu nền cho icon_cart
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: IconButton(
                  icon: SvgPicture.asset('assets/icons/cart.svg',color: Colors.white,),
                  onPressed: () => onTabTapped(2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
